-- Problem 8: Largest Product in a Series
-- Answer: 23514624000
module P008 where

import Data.Char
import Data.Foldable
import Data.Ord

width :: Int = 13

len :: Int = 1000

adjacants :: String -> [String]
adjacants s = map (\x -> [s !! (x + y) | y <- [0 .. (width - 1)]]) [0 .. (len - width)]

prod :: String -> Int
prod s = product $ map digitToInt s

main :: IO ()
main = do
  input <- readFile "input/p008.txt"
  print $ maximum $ map prod $ adjacants input
