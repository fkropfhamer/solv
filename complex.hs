data ComplexNumber a b = ComplexNumber  {
  im :: a,
  re :: b
}

showComplexNumber :: Show a => Show b => ComplexNumber a b -> String
showComplexNumber (ComplexNumber x y) = show x  ++ "+" ++ show y ++ "i"

instance (Show a, Show b) => Show (ComplexNumber a b) where
  show x = showComplexNumber x

add :: (Num a, Num b) => ComplexNumber a b -> ComplexNumber a b -> ComplexNumber a b
add (ComplexNumber x y) (ComplexNumber s t) = ComplexNumber (x + s) (y + t)

instance (Eq a, Eq b) => Eq (ComplexNumber a b) where
  (==) (ComplexNumber a b) (ComplexNumber x y) = a == x && b == y

