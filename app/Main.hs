module Main where
import Parser
import Parser.Util

main :: IO ()
main = do 
    Parser.Util.printHello
    putStrLn $ Parser.parse "A"
