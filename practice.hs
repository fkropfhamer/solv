sumInt :: Int -> Int -> Int
sumInt x 0 = x
sumInt 0 x = x
sumInt x y = x + y


sumList :: [Int] -> Int
sumList [] = 0
sumList (x:xs) = x + (sumList xs)
