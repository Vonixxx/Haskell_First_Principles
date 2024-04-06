-----------------------
-- Chapter Exercises --
-----------------------
-- awesome, also, and allAwesome
-- should be in scope for this session.

allAwesome = [awesome, also]
also       = ["Quake", "The Simons"]
awesome    = ["Papuchon", "curry", ":)"]

-------
-- 1 --
-------
-- Length is a function that takes a list and returns the number of
-- items in that list. Given the definition, what would its type signature be?

lengthCustom :: [a] -> Int
lengthCustom = undefined

-------
-- 2 --
-------
-- What are the results of the following expressions?

-- a) length [1, 2, 3, 4, 5]

-- a = 5

-- b) length [(1, 2), (2, 3), (3, 4)]

-- b = 3

-- c) length allAwesome

-- c = 2

-- d) length (concat allAwesome)

-- d = 5

-------
-- 3 --
-------
-- Look at the two expressions below. One works, and
-- one returns an error. Determine which does and why.
-- a) 6 / 3
-- b) 6 / length [1, 2, 3]

-- a) correct
-- Reason: the numbers are not concrete types

-- b) incorrect
-- Reason: length results in an Int
-- There is no Fractional instance for Int, which is required:
-- (/) :: Fractional a => a -> a -> a

-------
-- 4 --
-------
-- Fix the prior function using a different operator

four :: Int
four = 6 `div` length [1,2,3]

-------
-- 5 --
-------
-- What is the type of the expression 2 + 3 == 5?

five :: Bool
five = 2 + 3 == 5

-------
-- 6 --
-------
-- What is the type and expected result value of the following:
-- a) x = 5
-- b) x + 3 == 5

a :: Int
a = 5

b :: Integer -> Bool
b x = x + 3 == 5

-------
-- 7 --
-------
-- Which of the following are correct, and why?
-- If they will work, what values would these reduce to?

-- a) length allAwesome == 2

-- Correct
-- Result: True

-- b) length [1, 'a', 3, 'b']

-- Incorrect
-- Reason: [] :: [a], meaning the list can only contain elements of type a
-- i.e. the elements have to be of the same type as the first one from the list

-- c) length allAwesome + length awesome

-- Correct
-- Result: 2 + 3 = 5

-- d) (8 == 8) && ('b' < 'a')

-- Correct
-- Result: True && False = False

-- e) (8 == 8) && 9

-- Incorrect
-- Reason: there is no instance of Bool for Num

-------
-- 8 --
-------
-- Write a function that tells you whether or not a given 
-- String is a palindrome. Use the following: reverse :: [a] -> [a]

eight :: (Eq a) => [a] -> Bool
eight xs = xs == reverse xs

-------
-- 9 --
-------
-- Write a function to return the absolute
-- value of a number using an if-then-else expression.

nine :: Integer -> Integer
nine x = if x == (-x)
               then negate x
               else x

--------
-- 10 --
--------
-- Fill in the definition of the following function, using fst and snd.
-- f :: (a, b) -> (c, d) -> ((b, d), (a, c))
-- f = undefined

ten :: (a, b) -> (c, d) -> ((b, d), (a, c))
ten tupleOne tupleTwo = ((snd tupleOne, snd tupleTwo), (fst tupleOne, fst tupleTwo)) 

-----------------------
-- Correcting Syntax --
-----------------------
-- Correct the following blocks of code.

-------
-- 1 --
-------
-- When fixed, this function adds 1 to the
-- length of a string and returns that result.
-- x = (+)
-- F xs = l 'x' 1
--        where l = length xs

x = (+)

one :: [a] -> Int
one xs = l `x` 1
         where l = length xs

-------
-- 2 --
-------
-- This is supposed to be the id function.
-- \X = x

two :: a -> a
two x = x

-------
-- 3 --
-------
-- When fixed, this function will return 1 from the value (1, 2).
-- f (a b) = A

three :: (a,b) -> a
three (a,b) = a

---------------------------------------------
-- Match the Function Names to Their Types --
---------------------------------------------

-------
-- 1 --
-------
-- Which of the following types is that of show?
-- a) show a => a -> String
-- b) Show a -> a -> String
-- c) Show a => a -> String

-- c

-------
-- 2 --
-------
-- Which of the following types is that of ==?
-- a) a -> a -> Bool
-- b) Eq a => a -> a -> Bool
-- c) Eq a -> a -> a -> Bool
-- d) Eq a => A -> Bool

-- b

-------
-- 3 --
-------
-- Which of the following types is the type of fst?
-- a) (a, b) -> a
-- b) b -> a
-- c) (a, b) -> b

-- c

-------
-- 4 --
-------
-- Which of the following types is that of +?
-- a) Num a -> a -> a -> Bool
-- b) Num a => a -> a -> Bool
-- c) num a => a -> a -> a
-- d) Num a => a -> a -> a
-- e) a -> a -> a

-- d
