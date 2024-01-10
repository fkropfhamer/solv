module InterpreterTest where

import Solv.Interpreter
import Test.HUnit

testInterpret :: Test
testInterpret = TestCase (assertEqual "should return nothing" Nothing (interpret 3))

interpreterTests = [TestLabel "testInterpret" testInterpret]
