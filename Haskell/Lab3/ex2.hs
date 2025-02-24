data Tree a = Empty | Node a (Tree a) (Tree a)

treeToList :: Tree Int -> [Int]
treeToList Empty = []
treeToList (Node a left right) = treeToList left ++ [a] ++ treeToList right

main :: IO()
main = do
    let tree = Node 1 (Node 2 Empty Empty) (Node 3 (Node 4 Empty Empty) (Node 5 Empty Empty))
    --   1
    --  / \
    -- 2   3
    --    / \ 
    --   4   5
    let list = treeToList tree
    putStrLn ("In-order traversal of nodes is " ++ show list)