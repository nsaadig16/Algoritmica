sumOfSquares [] = 0
sumOfSquares list = foldl (+) 0 (map (\x -> x^2) list) 

-- The map function squares all the numbers in the list
-- The fold functions adds all the numbers in the list to 0