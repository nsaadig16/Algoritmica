afegir x l 
    | x `elem` l = l
    | otherwise = x:l

removeDuplicates [] = []
removeDuplicates llista = foldr afegir [] llista