-- Splits a list with n elements on one side and the rest in the other.
splitList n [] = ([],[])
splitList n list = (getNFirst n list, removeNFirst n list)

removeNFirst n (x:xs)
    | xs == [] = []
    | n == 0 = x:xs
    | otherwise = removeNFirst (n-1) xs

getNFirst n (x:xs)
    | xs == [] = [x]
    | n == 0 = []
    | otherwise = x : getNFirst (n-1) xs

-- We can also use the take and drop functions