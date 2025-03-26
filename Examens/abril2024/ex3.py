def espais(s : str, acc : int = 0) -> int:
    if not s: # Equivalent a if s == ""
        return acc
    elif s[0] == " ":
        return espais(s[1:], acc + 1)
    else:
        return espais(s[1:], acc)