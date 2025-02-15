isPalindrome [] = True
isPalindrome (x:xs)
    | length xs <= 1 = True
    | x == last xs = isPalindrome (init xs)
    | otherwise = False