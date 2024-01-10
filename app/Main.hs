module Main where
import Parser
import Parser.Util
import System.Environment

main :: IO ()
main = do 
    args <- getArgs
    mapM putStrLn args
    Parser.Util.printHello
    putStrLn $ Parser.parse "A"
