data Polynomial = Polynomial Int Int | Addition Polynomial Polynomial

instance Show (Polynomial) where
    show (Addition x y) = show x ++ " + " ++ (show y)
    show (Polynomial 1 y) = "x" ++ (superscript (show y))
    show (Polynomial x 0) = show x
    show (Polynomial x y) = (show x) ++ "x" ++ (superscript (show y))



superscript :: String -> String
superscript "1" = ""
superscript "2" = "²"
superscript "3" = "³"
superscript "4" = "⁴"
superscript "5" = "⁵"
superscript "6" = "⁶"
superscript "7" = "⁷"
superscript "8" = "⁸"
superscript "9" = "⁹"
superscript "0" = "⁰"

derivative :: Polynomial -> Polynomial
derivative (Polynomial x y) = Polynomial (x * y) (y - 1)
