s = "hjhkltf{jhlzhy_k3jy9wa3k_96j73745}"
keywords = ["caesar", "crypto", "cipher", "flag", "secret", "academy", "the"]

for shift in range(26):
    decoded = ''.join(
        chr((ord(c) - ord('a') - shift) % 26 + ord('a')) if c.isalpha() and c.islower()
        else chr((ord(c) - ord('A') - shift) % 26 + ord('A')) if c.isalpha() and c.isupper()
        else c
        for c in s
    )
    for kw in keywords:
            if kw in decoded:
                print(f"shift {shift:2d}: {decoded}  <-- mengandung '{kw}'")
                break
    else:
            print(f"shift {shift:2d}: {decoded}")
