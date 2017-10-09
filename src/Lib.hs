module Lib where

import qualified Data.Set as Set

someFunc :: IO ()
someFunc = putStrLn "someFunc"

newtype Combination a = Combination { runCombination :: [a] }
  deriving (Eq, Ord, Show)

newtype Circulation c a = Circulation { runCirculation :: (a, c) }

class Cycle a where
  days :: a -> Days

newtype Days = Days { runDays :: Int }

instance Cycle Days where
  days d = d

future :: Cycle c => c -> Set.Set (Combination a) -> [Combination a]
future _ cs
  | Set.null cs = []
  | otherwise = cycle $ Set.toList cs
