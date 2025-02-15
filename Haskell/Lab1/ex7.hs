runLengthEncode [] = []
runLengthEncode (x:xs)
    | xs == [] = []
    | x == head xs = (x,count (x:xs)) : runLengthEncode (removeFirstConsecutives (x:xs))

count (x:xs)
    | xs == [] = 1
    | x == head xs = 1 + count xs
    | otherwise = 1

removeFirstConsecutives (x:xs)
    | xs == [] = []
    | x == head xs = removeFirstConsecutives xs
    | otherwise = xs