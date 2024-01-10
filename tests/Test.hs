module Main where

import ParserTest
import InterpreterTest
import Test.HUnit
import qualified System.Exit as Exit

tests = TestList $  interpreterTests ++ parserTests
 
main :: IO ()
main = do
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess
