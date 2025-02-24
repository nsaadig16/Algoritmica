-- Encodes a list like this: aaabbcdaa -> [('a',3),('b',2),('c',1),('d',1),('a',2)]
runLengthEncode [] = []
runLengthEncode (x:xs)
    | xs == [] = []
    | x == head xs = (x,count (x:xs)) : runLengthEncode (removeFirstConsecutives (x:xs))

count (x:xs) 
--Counts how many consecutives numbers are the same
    | xs == [] = 1
    | x == head xs = 1 + count xs
    | otherwise = 1

removeFirstConsecutives (x:xs)  
--Removes the first consecutives numbers that are the same
    | xs == [] = []
    | x == head xs = removeFirstConsecutives xs
    | otherwise = xs