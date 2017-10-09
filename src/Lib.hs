module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

newtype Combination a = Combination { runCombination :: [a] }

newtype Circulation a c = Circulation { runCirculation :: (a, c) }

class Cycle a where
  days :: a -> Days

newtype Days = Days { runDays :: Int }

instance Cycle Days where
  days d = d
