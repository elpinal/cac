module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

newtype Combination a = Combination { runCombination :: [a] }

newtype Circulation a c = Circulation { runCirculation :: (a, c) }

newtype Days = Days Int

class Cycle a where
  days :: a -> Days
