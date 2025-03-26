def listFold (lst : list[int]) -> int:
    acc = 1
    while lst:  # Equivalent a while lst != []
        acc *= lst[0]
        lst = lst[1:]
    return acc