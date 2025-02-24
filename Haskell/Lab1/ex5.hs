-- Rotates the list to the left n positions
rotateList n (x:xs)
    | n `mod` length (x:xs) == 0 = (x:xs) 
    -- If the rotations leave it the same, we don't do anything
    | n == 0 = x:xs
    | otherwise = rotateList (n-1) (xs ++ [x]) 
    -- We append the first element to the end of the tail list (xs)