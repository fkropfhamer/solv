module Polynomial where 

data Polynomial = Polynomial Int Int | Addition Polynomial Polynomial | Multiplication Polynomial Polynomial

instance Show (Polynomial) where
    show (Addition x y) = "(" ++ (show x) ++ " + " ++ (show y) ++ ")"
    show (Multiplication x y) = show x ++ " * " ++ (show y)
    show (Polynomial 0 x) = "0"
    show (Polynomial x 1) = show x ++ "x"
    show (Polynomial x 0) = show x
    show (Polynomial 1 y) = "x" ++ (superscript (show y))
    show (Polynomial x y) = show x ++ "x" ++ (superscript (show y))



superscript :: String -> String
superscript [] = ""
superscript "-" = "⁻"
superscript "1" = "¹"
superscript "2" = "²"
superscript "3" = "³"
superscript "4" = "⁴"
superscript "5" = "⁵"
superscript "6" = "⁶"
superscript "7" = "⁷"
superscript "8" = "⁸"
superscript "9" = "⁹"
superscript "0" = "⁰"
superscript (x:xs) = superscript [x] ++ superscript xs

derivative :: Polynomial -> Polynomial
derivative (Polynomial x y) = Polynomial (x * y) (y - 1)
derivative (Addition x y) = Addition (derivative x) (derivative y)
derivative (Multiplication x y) = Addition (Multiplication (derivative x) y) (Multiplication (derivative y) x)
