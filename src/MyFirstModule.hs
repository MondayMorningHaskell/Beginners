module MyFirstModule where

myFirstExpression :: String
myFirstExpression = "Hello World!"

myFirstFunction :: String -> String
myFirstFunction input = "Hello " ++ input

-- The first example of a 'main' function in the article.
-- To run this function, switch its name to 'main' and
-- switch the name of the second main function to 'main2'.
-- Then do `runghc ./MyFirstModule'
main1 :: IO ()
main1 = do
  putStrLn "Running Main!"
  putStrLn "How Exciting!"

main :: IO ()
main = do
  putStrLn "Enter Your Name!"
  name <- getLine
  let message = myFirstFunction name
  putStrLn message

