addToList x l 
    | x `elem` l = l
    | otherwise = x:l
-- Adds the element x to the list l if x is not in l

removeDuplicates [] = []
removeDuplicates list = foldr addToList [] list
-- The fold function applies addToList to all the elements in list and an empty list