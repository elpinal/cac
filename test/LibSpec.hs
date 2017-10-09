module LibSpec where

import Test.Hspec

import qualified Data.Set as Set

import Lib

spec :: Spec
spec = do
  describe "future" $ do
    it "returns future" $ do
      future (Days 2) (Set.fromList []) `shouldBe` ([] :: [Combination Int])
      3 `take` future (Days 1) (Set.fromList [Combination [3, 5], Combination [1, 3], Combination [6, 4]]) `shouldBe` ([] :: [Combination Int])
