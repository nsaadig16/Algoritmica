data Tree a = Empty | Node a (Tree a) (Tree a)

isValueInTree :: Int -> Tree Int -> Bool
isValueInTree n Empty = False
isValueInTree n (Node a left right)
    | n == a = True
    | otherwise = isValueInTree n left || isValueInTree n right

main :: IO()
main = do
    let tree = Node 1 (Node 2 Empty Empty) (Node 3 (Node 4 Empty Empty) (Node 5 Empty Empty))
    --   1
    --  / \
    -- 2   3
    --    / \ 
    --   4   5
    let isThree = isValueInTree 3 tree
    let isSix = isValueInTree 6 tree
    putStrLn ("Is there a 3 in the tree? " ++ show isThree)
    putStrLn ("Is there a 6 in the tree? " ++ show isSix)