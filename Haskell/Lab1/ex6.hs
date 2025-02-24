-- Finds the primes in a list
findPrimes (x:xs)
    | isPrime x && xs == [] = [x]   -- Base case #1
    | xs == [] = []                 -- Base case #2
    | isPrime x = x : findPrimes xs -- Recursive case #1
    | otherwise = findPrimes xs     -- Recursive case #1

isPrime a = checkPrime a (a - 1)    -- Checks if a number is prime

checkPrime a b
    | a < 2 = False
    | b < 2 = True
    | a `mod` b == 0 = False
    | otherwise = checkPrime a (b-1)