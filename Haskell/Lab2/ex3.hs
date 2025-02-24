factorial n = foldl (*) 1 [1..n]

-- The list goes from 1 to n
-- The fold function multiplies 1 and each element of the list