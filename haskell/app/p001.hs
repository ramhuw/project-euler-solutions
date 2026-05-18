-- Problem 1: Multiples of 3 or 5
-- Answer: 234168
module P001 where

isMul :: Int -> [Int]
isMul 0 = []
isMul x
  | mod x 3 == 0 || mod x 5 == 0 = isMul (x - 1) ++ [x]
  | otherwise = isMul (x - 1)

main :: IO ()
main = do
  print $ sum $ isMul 1000
