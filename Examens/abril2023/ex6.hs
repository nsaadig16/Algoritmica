-- Opció 1
prodList :: [Int] -> Int
prodList [] = 1
prodList (x:xs) = x * prodList(xs)
-- Opció 2
prodListFold (lst) = foldl (*) 1 lst