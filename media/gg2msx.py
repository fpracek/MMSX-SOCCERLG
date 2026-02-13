import sys
import struct

def usage():
    print("Uso: python gg2msx.py input_gamegear.vgm output_msx.vgm")
    sys.exit(1)

if len(sys.argv) != 3:
    usage()

input_file = sys.argv[1]
output_file = sys.argv[2]

class ConverterState:
    def __init__(self):
        # Memoria delle frequenze attuali per i 4 canali (0,1,2=Tone, 3=Noise)
        self.channels_freq = [0, 0, 0, 0] 
        
        # MEMORIA CRUCIALE: Il Game Gear invia i dati in due tempi.
        # Dobbiamo ricordare quale canale abbiamo toccato per ultimo.
        self.last_latched_channel = 0 
        self.last_latched_type = 0 # 0=Tone, 1=Volume
        
        # Stato Mixer MSX (Reg 7)
        # Default: Tone A,B,C ON (0), Noise OFF (1) -> 00111000 (0x38)
        self.mixer = 0x38 
        self.noise_enabled = False

    def update_mixer(self, f_out):
        # Logica Mixer:
        # Se il Game Gear sta suonando rumore (Vol < 15), attiviamo il Noise su Canale C (MSX)
        # e spegniamo il Tono su C per non avere interferenze.
        
        new_mixer = 0b10000000 # I/O ports input only (sicurezza)
        
        if self.noise_enabled:
            # Noise ON su C (bit 5=0), Tone C OFF (bit 2=1)
            # Tone A,B ON (bit 0,1=0)
            # Noise A,B OFF (bit 3,4=1)
            mask = 0b00011100 
            # Bit: 5(N_C)=0, 4(N_B)=1, 3(N_A)=1, 2(T_C)=1, 1(T_B)=0, 0(T_A)=0
            new_mixer = 0b10011100
        else:
            # Reset Standard: Tone A,B,C ON, Tutto Noise OFF
            new_mixer = 0b10111000 # 0x38

        if new_mixer != self.mixer:
            self.mixer = new_mixer
            f_out.write(b'\xA0')
            f_out.write(struct.pack('BB', 7, self.mixer))

state = ConverterState()

try:
    with open(input_file, 'rb') as f_in, open(output_file, 'wb') as f_out:
        
        # --- 1. HEADER REBUILD (VGM 1.60) ---
        original_header = bytearray(f_in.read(0x40))
        if len(original_header) < 0x40: raise ValueError("File input troppo corto")

        total_samples = struct.unpack_from('<I', original_header, 0x18)[0]
        
        # Header Buffer
        new_header = bytearray(128)
        new_header[0:4] = b'Vgm '
        struct.pack_into('<I', new_header, 0x08, 0x00000160) # Version 1.60
        struct.pack_into('<I', new_header, 0x0C, 0)          # SN76489 Clock 0 (Disable)
        struct.pack_into('<I', new_header, 0x18, total_samples)
        struct.pack_into('<I', new_header, 0x34, 0x0000004C) # Data Offset relativo -> 0x80
        struct.pack_into('<I', new_header, 0x74, 1789772)    # AY8910 Clock
        
        f_out.write(new_header)
        
        # Calcolo punto di inizio dati input
        ver = struct.unpack_from('<I', original_header, 0x08)[0]
        off = struct.unpack_from('<I', original_header, 0x34)[0]
        start_pos = (0x34 + off) if (ver >= 0x150 and off != 0) else 0x40
        f_in.seek(start_pos)

        # --- 2. INIT MSX CHIP ---
        # Accendiamo tutto subito per evitare il silenzio iniziale
        f_out.write(b'\xA0\x07\x38') # Mixer: Tone A,B,C on
        # Volumi a 0
        f_out.write(b'\xA0\x08\x00')
        f_out.write(b'\xA0\x09\x00')
        f_out.write(b'\xA0\x0A\x00')

        print("Conversione v4.0 (Fix Latch)...")

        while True:
            b = f_in.read(1)
            if not b: break
            cmd = b[0]

            if cmd == 0x66: # End
                f_out.write(b)
                break
            
            # Copia comandi di attesa (Wait)
            elif cmd in [0x61, 0x62, 0x63, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7A, 0x7B, 0x7C, 0x7D, 0x7E, 0x7F]:
                f_out.write(b)
                if cmd == 0x61: f_out.write(f_in.read(2))

            # --- Interprete SN76489 ---
            elif cmd == 0x50: 
                val = f_in.read(1)[0]
                is_latch = (val & 0x80) != 0
                
                # Variabili temporanee
                ch = 0
                type_ = 0
                data = 0

                if is_latch:
                    # LATCH BYTE: 1cc t dddd
                    ch = (val >> 5) & 0x03
                    type_ = (val >> 4) & 0x01
                    data = val & 0x0F
                    
                    # Salviamo nello stato globale per il prossimo byte
                    state.last_latched_channel = ch
                    state.last_latched_type = type_
                    
                    if type_ == 0: # TONE (aggiorna i 4 bit bassi)
                        if ch < 3:
                            # Prendi i vecchi bit alti, sostituisci i 4 bit bassi
                            old_high = state.channels_freq[ch] & 0x3F0 
                            new_freq = old_high | data
                            state.channels_freq[ch] = new_freq
                            
                            # Scrivi subito all'MSX
                            # Reg Fine (Low 8 bit)
                            f_out.write(b'\xA0')
                            f_out.write(struct.pack('BB', ch*2, new_freq & 0xFF))
                            # Reg Coarse (High 4 bit)
                            f_out.write(b'\xA0')
                            f_out.write(struct.pack('BB', (ch*2)+1, (new_freq >> 8) & 0x0F))
                            
                    else: # VOLUME
                        # Inversione Volume: 15-val
                        msx_vol = 15 - data
                        
                        if ch < 3: # Canali A, B, C
                            f_out.write(b'\xA0')
                            f_out.write(struct.pack('BB', 8+ch, msx_vol))
                        
                        elif ch == 3: # Noise Volume
                            # Controlliamo se il noise è attivo
                            state.noise_enabled = (data < 15) # Se vol < 15, è attivo
                            state.update_mixer(f_out)
                            
                            # Usiamo il volume noise per il canale C quando è in modalità noise
                            if state.noise_enabled:
                                f_out.write(b'\xA0')
                                f_out.write(struct.pack('BB', 10, msx_vol))

                else: 
                    # DATA BYTE: 0-dddddd
                    # Usa il canale salvato dal latch precedente!
                    ch = state.last_latched_channel
                    type_ = state.last_latched_type
                    data = val & 0x3F # 6 bit
                    
                    if ch < 3 and type_ == 0: # Tone Data
                        # Aggiorna i 6 bit alti della frequenza
                        old_low = state.channels_freq[ch] & 0x0F
                        new_freq = (data << 4) | old_low
                        state.channels_freq[ch] = new_freq
                        
                        # Scrivi all'MSX
                        f_out.write(b'\xA0')
                        f_out.write(struct.pack('BB', ch*2, new_freq & 0xFF))
                        f_out.write(b'\xA0')
                        f_out.write(struct.pack('BB', (ch*2)+1, (new_freq >> 8) & 0x0F))
                
                # Ignora comandi Noise Control (ch=3, type=0) complessi per ora,
                # dato che il registro noise MSX (Reg 6) è globale e statico.

            else:
                pass # Ignora comandi sconosciuti

        # Fix EOF size
        size = f_out.tell()
        f_out.seek(4)
        struct.pack_into('<I', new_header, 4, size-4)
        print("Fatto. Prova ora!")

except Exception as e:
    print(f"Errore critico: {e}")