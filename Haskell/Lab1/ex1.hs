sumOfSquares [] = 0
sumOfSquares (x:xs) = x^2 + sumOfSquares xs