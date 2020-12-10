module DataTypesComplete where

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

data Task1 =
  BasicTask1 String Int |
  ComplexTask1 String Int Location

assignment1 :: Task1
assignment1 = BasicTask1 "Do assignint 1" 60

laundry1 :: Task1
laundry1 = BasicTask1 "Do Laundry" 45

complexTask :: Task1
complexTask = ComplexTask1 "Write Memo" 30 Office

data TaskLength =
  QuarterHour |
  HalfHour |
  ThreeQuarterHour |
  Hour |
  HourAndHalf |
  TwoHours |
  ThreeHours

data Task2 a =
  BasicTask2 String a |
  ComplexTask2 String a Location

assignment2 :: Task2 Int
assignment2 = BasicTask2 "Do assignment 2" 60

assignment2' :: Task2 TaskLength
assignment2' = BasicTask2 "Do assignment 2" Hour

laundry2 :: Task2 Int
laundry2 = BasicTask2 "Do Laundry" 45

laundry2' :: Task2 TaskLength
laundry2' = BasicTask2 "Do Laundry" ThreeQuarterHour

complexTask2 :: Task2 TaskLength
complexTask2 = ComplexTask2 "Write Memo" HalfHour Office

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

data Task3 = BasicTask3
  { taskName :: String
  , taskLength :: Int
  }

twiceLength :: Task3 -> Int
twiceLength task = 2 * (taskLength task)

capitalizedName :: Task3 -> String
capitalizedName task = map toUpper (taskName task)

-- Could also use `BasicTask3 "Do Assignment 3" 60
assignment3 :: Task3
assignment3 = BasicTask3
  { taskName = "Do Assignment 3"
  , taskLength = 60
  }

laundry3 :: Task3
laundry3 = BasicTask3
  { taskName = "Do Laundry"
  , taskLength = 45
  }

tripleTaskLength :: Task3 -> Task3
tripleTaskLength task = task { taskLength = 3 * taskLength task}

data Task4 =
  BasicTask4
    { taskName4 :: String
    , taskLength4 :: Int
    }
  |
  ComplexTask4
    { taskName4 :: String
    , taskLength4 :: Int
    , taskLocation4 :: Location
    }

-- This compiles but it will FAIL at runtime!
causeError :: Location
causeError = taskLocation4 (BasicTask4 "Cause error" 10)

{-
-- This definition won't compile, because the `taskLength4` fields have
-- different types!
data Task4 =
  BasicTask4
    { taskName4 :: String
    , taskLength4 :: Int
    }
  |
  ComplexTask4
    { taskName4 :: String
    , taskLength4 :: TaskLength
    , taskLocation4 :: Location
    }
-}

type TaskTuple = (Int, String, Task3)

makeTupleBigger :: TaskTuple -> TaskTuple
makeTupleBigger (intValue, stringValue, BasicTask3 name len) =
  (2 * intValue, map toUpper stringValue, BasicTask3 (map toUpper name) (2 * len))

type Task5 = (String, Int)

twiceTaskLength :: Task5 -> Int
twiceTaskLength task = 2 * (snd task)

newtype TaskLength2 = TaskLength2
  { unTaskLength :: Int }

data Task6 = BasicTask6 String TaskLength2

mkTask :: String -> Int -> Task6
mkTask name time = BasicTask6 name (TaskLength2 time)

twiceLength2 :: Task6 -> Int
twiceLength2 (BasicTask6 _ len)= 2 * unTaskLength len