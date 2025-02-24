data Tree a = Empty | Node a (Tree a) (Tree a)

maxTree :: Tree Int -> Int
maxTree Empty = minBound
-- An empty node always gives the minimum value possible (minBound), so that every other node is bigger
maxTree (Node a left right) = max a (max (maxTree left) (maxTree right))

--We do the max between the root, the left subtree and the right subtree

main :: IO()
main = do
    let tree = Node 1 (Node 2 Empty Empty) (Node 3 (Node 4 Empty Empty) (Node 5 Empty Empty))
    --   1
    --  / \
    -- 2   3
    --    / \ 
    --   4   5
    let max = maxTree tree
    putStrLn ("The max element of the tree is " ++ show max)