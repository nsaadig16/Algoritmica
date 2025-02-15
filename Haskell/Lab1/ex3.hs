isPalindrome [] = True
isPalindrome (x:xs)
    | xs == [] = True
    | x == last xs = isPalindrome (init xs)
    | otherwise = False