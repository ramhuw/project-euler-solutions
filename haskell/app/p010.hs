-- Problem 10: Summation of Primes
-- Answer: 142913828922

module P010 where

import Data.Numbers.Primes (primes)

main :: IO ()
main = do
  let bound = 2000000 :: Int
  print $ sum $ takeWhile (<= bound) primes
