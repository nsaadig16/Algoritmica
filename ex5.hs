rotateList n (x:xs)
    | length (x:xs) `mod` n == 0 = (x:xs)
    | n == 0 = x:xs
    | otherwise = rotateList (na-1) (xs ++ [x])