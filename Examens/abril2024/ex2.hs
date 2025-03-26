espais :: String -> Int
espais "" = 0
espais (x:xs)
    | x == ' ' = 1 + espais xs
    | otherwise = espais xs