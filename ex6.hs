findPrimes (x:xs)
    | isPrime x && xs == [] = [x]
    | xs == [] = []
    | isPrime x = x : findPrimes xs
    | otherwise = findPrimes xs

isPrime a = checkPrime a (a - 1)

checkPrime a b
    | a < 2 = False
    | b < 2 = True
    | a `mod` b == 0 = False
    | otherwise = checkPrime a (b-1)