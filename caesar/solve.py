s = "mbyccsxqdrobelsmyxwxeyvmah"
keywords = ["caesar", "crypto", "cipher", "flag", "secret", "academy", "the"]

for shift in range(26):
    decoded = ''.join(
        chr((ord(c) - ord('a') - shift) % 26 + ord('a'))
        for c in s
    )
    for kw in keywords:
        if kw in decoded:
            print(f"shift {shift:2d}: {decoded}  <-- mengandung '{kw}'")
            break
    else:
        print(f"shift {shift:2d}: {decoded}")
