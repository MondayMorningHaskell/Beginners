module SyntaxComplete where

myIfStatement :: Int -> Int
myIfStatement a = if a <= 2
  then a + 2
  else a - 2

myGuardStatement :: Int -> Int
myGuardStatement a
  | a <= 2 = a + 2
  | a <= 6 = a
  | otherwise = a - 2

myPatternFunction :: [Int] -> Int
myPatternFunction [a] = a + 3
myPatternFunction [a, b] = a + b + 1
myPatternFunction (1 : 2 : _) = 3
myPatternFunction (3 : 4 : _) = 7
myPatternFunction xs = length xs

myCaseFunction :: Bool -> [Int] -> Int
myCaseFunction usePattern xs = if not usePattern
  then length xs
  else case xs of
    [a] -> a + 3
    [a, b] -> a + b + 1
    (1 : 2 : _) -> 3
    (3 : 4 : _) -> 7
    _ -> 1

mathFunction :: Int -> Int -> Int -> Int
mathFunction a b c = (c - a) + (b - a) + (a * b * c) + a

mathFunctionWhere :: Int -> Int -> Int -> Int
mathFunctionWhere a b c = diff1 + diff2 + prod + a
  where
    diff1 = c - a -- Could also refer to `diff2`, or `prod` on this line
    diff2 = b - a -- Just avoid circular dependencies!
    prod = a * b * c

mathFunctionLet :: Int -> Int -> Int -> Int
mathFunctionLet a b c =
  let diff1 = c - a
      diff2 = b - a
      prod = a * b * c
  in diff1 + diff2 + prod + a

main :: IO ()
main = do
  input <- getLine
  let repeated = replicate 3 input -- (or repeatFunction input)
  print repeated
  -- where
  --   repeatFunction xs = replicate 3 xs
