-- Problem 2: Even Fibonacci Numbers
-- Answer: 4613732
module P002 where

evenFib :: [Int]
evenFib = 1 : 2 : [evenFib !! i + evenFib !! (i + 1) | i <- [0 ..]]

bound :: Int = 4000000

main :: IO ()
main = do
  print $ sum $ filter even $ takeWhile (<= bound) evenFib
