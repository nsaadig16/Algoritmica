-- The sum of the squares of a list
sumOfSquares [] = 0
sumOfSquares (x:xs) = x^2 + sumOfSquares xs