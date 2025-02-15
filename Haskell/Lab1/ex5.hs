rotateList n (x:xs)
    | n `mod` length (x:xs) == 0 = (x:xs)
    | n == 0 = x:xs
    | otherwise = rotateList (n-1) (xs ++ [x])