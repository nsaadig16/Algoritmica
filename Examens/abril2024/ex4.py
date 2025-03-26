def espais( s : str) -> int:
    acc = 0
    while s:    # Equivalent a while s != ""
        if s[0] == " ":
            acc += 1
        s = s[1:]
    return acc