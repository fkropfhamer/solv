module Solv.Parser where 

data Operation = Add | Subtract

data Expression = Int deriving( Eq, Show )

parse :: String -> Maybe [Expression] 
parse s = Nothing

parseLine :: String -> Maybe Expression
parseLine s = Nothing