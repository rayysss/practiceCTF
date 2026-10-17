target = "jU5t_a_sna_3lpm12ga4b_u_4_mfrc46"
password = [''] * 32

# 1. Indeks 0-7
for i in range(8):
    password[i] = target[i]

# 2. Indeks 8-15
for i in range(8, 16):
    password[i] = target[23 - i]

# 3. Indeks 16-30 (genap)
for i in range(16, 32, 2):
    password[i] = target[46 - i]

# 4. Indeks 17-31 (ganjil)
for i in range(31, 16, -2):
    password[i] = target[i]

# Gabungkan
result = "".join(password)
print(f"Password: {result}")
