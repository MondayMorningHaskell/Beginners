module DataTypes where

import Data.Char (toUpper)

data Location =
  School |
  Office |
  Home

schoolLocation :: Location
schoolLocation = School

officeLocation :: Location
officeLocation = Office

homeLocation :: Location
homeLocation = Home

data Task1 = Task1

assignment1 :: Task1
assignment1 = undefined

laundry1 :: Task1
laundry1 = undefined

complexTask :: Task1
complexTask = undefined

data TaskLength = TaskLength

data Task2 a = Task2

assignment2 :: Task2 Int
assignment2 = undefined

assignment2' :: Task2 TaskLength
assignment2' = undefined

laundry2 :: Task2 Int
laundry2 = undefined

laundry2' :: Task2 TaskLength
laundry2' = undefined

complexTask2 :: Task2 TaskLength
complexTask2 = undefined

-- BAD! Type is: [Task2 Int, Task2 TaskLength]
-- badTaskList :: [Task2 a]
-- badTaskList = [assignment2, complexTask2]

data List a =
  Nil |
  Cons a (List a)

emptyList :: [Int]
emptyList = []

emptyList' :: List Int
emptyList' = Nil

fullList :: [Int]
fullList = 1 : 2 : 3 : []

fullList' :: List Int
fullList' = Cons 1 (Cons 2 (Cons 3 Nil))

data Task3 = Task3

twiceLength :: Task3 -> Int
twiceLength task = undefined

capitalizedName :: Task3 -> String
capitalizedName task = undefined

-- Could also use `BasicTask3 "Do Assignment 3" 60
assignment3 :: Task3
assignment3 = undefined

laundry3 :: Task3
laundry3 = undefined

tripleTaskLength :: Task3 -> Task3
tripleTaskLength task = undefined

data Task4 = Task4

type TaskTuple = (Int, String, Task3)

makeTupleBigger :: TaskTuple -> TaskTuple
makeTupleBigger = undefined

type Task5 = (String, Int)

twiceTaskLength :: Task5 -> Int
twiceTaskLength task = undefined

newtype TaskLength2 = TaskLength2 ()

data Task6 = Task6

mkTask :: String -> Int -> Task6
mkTask name time = undefined

twiceLength2 :: Task6 -> Int
twiceLength2 = undefined
