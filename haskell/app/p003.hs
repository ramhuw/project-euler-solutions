-- Problem 3: Even Fibonacci Numbers
-- Answer: 6857
module P003 where

factors :: Int -> Int -> [Int]
factors p n
  | n == 1 = []
  | mod n p == 0 = p : factors p (div n p)
  | otherwise = factors (p + 1) n

n :: Int = 600851475143

main :: IO ()
main = do
  print $ last $ factors 2 n
