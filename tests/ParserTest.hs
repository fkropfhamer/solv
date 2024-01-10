module ParserTest where
import Solv.Parser
import Test.HUnit

testParse :: Test
testParse = TestCase (assertEqual "should return nothing" Nothing (parse ""))

testParseLine :: Test
testParseLine = TestCase (assertEqual "should return nothing" Nothing (parseLine ""))
 
parserTests = [TestLabel "testParse" testParse, TestLabel "testParseLine" testParseLine]
