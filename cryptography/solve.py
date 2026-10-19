from Crypto.Util.number import long_to_bytes, inverse

# --- GANTI DENGAN ANGKA DARI FACTORDB.COM ---
p = 10725802403113500160905962445604470167179368109016722523167967176202402354535693652761274441457102900144114459967870806231249767282954569832245125503110781
q = 12098520864598198757294135341465388062087431109285224283440314414683283061468500249596026217234382854875647811812632201834942205849073893715844547051090363
# --------------------------------------------

e = 65537
n = p * q

# Hitung kunci privat
phi = (p - 1) * (q - 1)
d = inverse(e, phi)

# Baca pesan terenkripsi
with open("msg.enc", "rb") as f:
    c = int.from_bytes(f.read(), byteorder='big')

# Dekripsi
m = pow(c, d, n)
plaintext = long_to_bytes(m)

print("\n[+] HASIL DEKRIPSI:")
print(plaintext.decode('utf-8', errors='ignore'))
