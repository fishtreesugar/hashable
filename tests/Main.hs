-- | Tests for the 'Data.Hashable' module.  We test functions by
-- comparing the C and Haskell implementations.

module Main (main) where

import Properties (properties)
import Regress (regressions)
import Test.Tasty (defaultMain, testGroup)

main :: IO ()
main = defaultMain $ testGroup "hashable"
    [ testGroup "properties" properties
    , testGroup "regressions" regressions
    ]
