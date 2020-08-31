data ComplexNumber a b = ComplexNumber a b

showComplexNumber :: Show a => Show b => ComplexNumber a b -> String
showComplexNumber (ComplexNumber x y) = show x  ++ "+" ++ show y ++ "i"


instance (Show a, Show b) => Show (ComplexNumber a b) where
  show x = showComplexNumber x

re :: ComplexNumber a b -> a
re (ComplexNumber x y) = x

im :: ComplexNumber a b -> b
im (ComplexNumber x y) = y

add :: (Num a, Num b) => ComplexNumber a b -> ComplexNumber a b -> ComplexNumber a b
add (ComplexNumber x y) (ComplexNumber s t) = ComplexNumber (x + s) (y + t)

