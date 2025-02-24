-- Removes the duplicate elements from a list
removeDuplicates [] = []
removeDuplicates (x:xs)
    | x `elem` xs = removeDuplicates xs -- `elem` checks x is in list xs 
    | otherwise = x : removeDuplicates xs
