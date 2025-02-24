data Tree a = Empty | Node a (Tree a) (Tree a)

treeHeight :: Tree Int -> Int
treeHeight Empty = -1
treeHeight (Node _ left right) = 1 + max (treeHeight left) (treeHeight right)

-- We use _ because the a parameter is not needed (it's optional)

main :: IO()
main = do
    let tree = Node 1 (Node 2 Empty Empty) (Node 3 (Node 4 Empty Empty) (Node 5 Empty Empty))
    --   1
    --  / \
    -- 2   3
    --    / \ 
    --   4   5
    let height = treeHeight tree
    putStrLn ("The height of the tree is " ++ show height)