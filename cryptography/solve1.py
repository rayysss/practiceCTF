from Crypto.Util.number import long_to_bytes, inverse

# --- GANTI DENGAN ANGKA DARI FACTORDB.COM ---
p = 10221735900482358230901535319769523600020986677262066540404131527423502530008384977397409297115445211218090685160066559209004855216481760207348314944999963
q = 13331193528989238711281209084398307362804767638940062463831686008684031051105241659991501990308217733345218358352985573809576597628552151562857633661821019
# --------------------------------------------

e = 65537
n = p * q

# Hitung kunci privat
phi = (p - 1) * (q - 1)
d = inverse(e, phi)

# Baca pesan terenkripsi
with open("msg1.enc", "rb") as f:
    c = int.from_bytes(f.read(), byteorder='big')

# Dekripsi
m = pow(c, d, n)
plaintext = long_to_bytes(m)

print("\n[+] HASIL DEKRIPSI:")
print(plaintext.decode('utf-8', errors='ignore'))
