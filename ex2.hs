removeDuplicates [] = []
removeDuplicates (x:xs)
    | xs == [] = [x]
    | isDuplicate x xs = removeDuplicates xs
    | otherwise = x : removeDuplicates xs

isDuplicate a (x:xs)
    | a == x = True
    | xs == [] = False
    | otherwise = isDuplicate a xs