module LibSpec where

import Test.Hspec

import qualified Data.Set as Set

import Lib

spec :: Spec
spec = do
  describe "future" $ do
    it "returns future" $ do
      future (Days 2) (Set.fromList []) `shouldBe` ([] :: [Combination Int])
