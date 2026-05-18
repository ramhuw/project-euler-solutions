-- Problem 7: 10001st Prime
-- Answer: 104743
module P007 where

sieve :: [Int] -> [Int]
sieve [] = []
sieve (p : xs) = p : sieve [x | x <- xs, mod x p /= 0]

primes :: [Int]
primes = sieve [2 ..]

main :: IO ()
main = do
  print $ primes !! 10000
