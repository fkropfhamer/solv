sumList :: [Int] -> Int
sumList [] = 0
sumList (x:xs) = x + (sumList xs)

mySum :: [Int] -> Int
mySum x = myReduce x 0 add

myReduce :: [a] -> b -> (a -> b -> b) -> b
myReduce [] y f = y 
myReduce (x:xs) y f = myReduce xs (f x y) f

add :: Int -> Int -> Int
add x y = x + y

myMap :: [a] -> (a -> b) -> [b]
myMap [] f = []
myMap (x: xs) f = (f x) : (myMap xs f)

myFilter :: [a] -> (a -> Bool) -> [a]
myFilter [] f = []
myFilter (x: xs) f = if f x then myFilter xs f else x : (myFilter xs f)

dot :: Num a => [a] -> [a] -> a
dot [] [] = 0
dot (x:xs) (y:ys) = x * y + dot xs ys

sigmoid :: Floating a => a -> a
sigmoid x = 1.0 / 1.0 + (exp (negate x))

