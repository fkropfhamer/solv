data Term  a  = Const a | Addition (Term a) (Term a)


instance Show a => Show (Term a) where 
    show (Const x) = show x
    show (Addition x y) =  "(" ++ show x ++ "+" ++ show y ++ ")" 

differentiate (Const _) = Const 0
differentiate (Addition x y) =  Addition (differentiate x) $ differentiate y 
