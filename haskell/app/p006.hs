-- Problem 6:  Sum Square Difference
-- Answer: 25164150
module P006 where

sumSq :: Int -> Int
sumSq n = sum $ map (\x -> x ^ 2) [1 .. n]

sqSum :: Int -> Int
sqSum n = (sum [1 .. n]) ^ 2

main :: IO ()
main = do
  let n = 100
  print $ sqSum n - sumSq n
