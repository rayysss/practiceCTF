import re

# Baca file Java
with open("VaultDoor1.java", "r") as f:
    content = f.read()

# Cari semua pola: password.charAt(INDEX) == 'CHAR'
matches = re.findall(r"password\.charAt\((\d+)\)\s*==\s*'(.)'", content)

# Buat dictionary indeks -> karakter
password_chars = {}
for index, char in matches:
    password_chars[int(index)] = char

# Susun ulang berdasarkan indeks
password = "".join(password_chars[i] for i in range(32))
print(f"Password: {password}")
