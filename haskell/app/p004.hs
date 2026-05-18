-- Problem 4: Largest Palindrome Product
-- Answer: 906609
module P004 where

isPal :: String -> Bool
isPal s
  | length s < 2 = True
  | otherwise = (head s == last s) && (isPal $ init $ tail s)

main :: IO ()
main = do
  print $ maximum $ filter (isPal . show) [x * y | x :: Int <- [100 .. 999], y :: Int <- [x .. 999]]
