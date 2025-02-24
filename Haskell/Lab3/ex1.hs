data Tree a = Empty | Node a (Tree a) (Tree a)

sumTree :: Tree Int -> Int
sumTree Empty = 0
sumTree (Node a left right) = a + sumTree left + sumTree right

main :: IO()
main = do
    let tree = Node 1 (Node 2 Empty Empty) (Node 3 (Node 4 Empty Empty) Empty)
    --   1
    --  / \
    -- 2   3
    --    /
    --   4
    let sum = sumTree tree
    putStrLn ("Sum of nodes is " ++ show sum)