-- Checks if the list is palindrome
isPalindrome [] = True
isPalindrome (x:xs)
    | xs == [] = True   
    -- A single element is palindrome
    | x == last xs = isPalindrome (init xs) 
    -- We use init xs to remove the last element
    | otherwise = False