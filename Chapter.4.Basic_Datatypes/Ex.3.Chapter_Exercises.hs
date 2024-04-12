-----------------------
-- Chapter Exercises --
-----------------------

allAwesome = [awesome, also]
also       = ["Quake", "The Simons"]
awesome    = ["Papuchon", "curry", ":)"]

-------
-- 1 --
---------------------------------------------------------------------
-- Length is a function that takes a list and returns the          --
-- number of items in that list. What would its type signature be? --
---------------------------------------------------------------------

lengthCustom :: [a] -> Int
lengthCustom = length

-------
-- 2 --
---------------------------
-- What are the results? --
----------------------------------------
-- a) length [1, 2, 3, 4, 5]          --
-- b) length [(1, 2), (2, 3), (3, 4)] --
-- c) length allAwesome               --
-- d) length (concat allAwesome)      --
----------------------------------------

-- a) λ> 5

-- b) λ> 3

-- c) λ> 2

-- d) λ> 5

-------
-- 3 --
---------------------------------------------------------
-- Look at the two expressions below. One works, and   --
-- one returns an error. Determine which does and why. --
---------------------------------------------------------
-- a) 6 / 3                --
-- b) 6 / length [1, 2, 3] --
-----------------------------

-- a) Correct.
--    Reason: the numbers are not concrete types.

-- b) Incorrect.
--    Reason: length results in an Int
--    whereas: (/) :: Fractional a => a -> a -> a

-------
-- 4 --
----------------------------------------------------------
-- Fix the prior function by using a different operator --
----------------------------------------------------------

four :: Int
four = 6 `div` length [1,2,3]

-------
-- 5 --
-------------------------------------
-- What is the type of 2 + 3 == 5? --
-------------------------------------

five :: Bool
five = 2 + 3 == 5

-------
-- 6 --
------------------------------------------------------------------
-- What is the type and expected result value of the following? --
------------------------------------------------------------------
-- a) x = 5      --
-- b) x + 3 == 5 --
-------------------

sixA :: Num a => a
sixA = 5

sixB :: (Num a,Eq a) => a -> Bool
sixB x = x + 3 == 5

-------
-- 7 --
-----------------------------------------------------------
-- Which of the following are correct, and why?          --
-- If they will work, what values would these reduce to? --
-----------------------------------------------------------
-- a) length allAwesome == 2             --
-- b) length [1, 'a', 3, 'b']            --
-- c) length allAwesome + length awesome --
-- d) (8 == 8) && ('b' < 'a')            --
-- e) (8 == 8) && 9                      --
-------------------------------------------

-- a) Correct.
--    Result: λ> True


-- b) Incorrect.
--    Reason: [] :: [a]
--    all elements must be of the same type.


-- c) Correct.
--    Result: λ> 5


-- d) Correct.
--    Result: λ> False


-- e) Incorrect.
--    Reason: there is no instance of Bool for Num.

-------
-- 8 --
-----------------------------------------------------------
-- Write a function that tells you whether or not a      --
-- String is a palindrome, using the function `reverse`. --
-----------------------------------------------------------

eight :: (Eq a) => [a] -> Bool
eight xs = xs == reverse xs

-------
-- 9 --
---------------------------------------------------------
-- Write a function to return the absolute             --
-- value of a number using an if-then-else expression. --
---------------------------------------------------------

nine :: (Num a,Eq a) => a -> a
nine x = if abs x == x
           then x
           else negate x

--------
-- 10 --
------------------------------------------------
-- Fill in the definition, using fst and snd. --
-------------------------------------------------
-- ten :: (a, b) -> (c, d) -> ((b, d), (a, c)) --
-- ten = undefined                             --
-------------------------------------------------

ten :: (a, b) -> (c, d) -> ((b, d), (a, c))
ten tupleOne tupleTwo = ((snd tupleOne, snd tupleTwo), (fst tupleOne, fst tupleTwo))

-----------------------
-- Correcting Syntax --
----------------------------
-- Correct the following. --
----------------------------

-------
-- 1 --
--------------------------------
-- x = (+)                    --
-- F xs = l 'x' 1             --
--        where l = length xs --
--------------------------------

x :: Num a => a -> a -> a
x = (+)

one :: [a] -> Int
one xs = l `x` 1
         where l = length xs

-------
-- 2 --
------------
-- \X = x --
------------

two :: a -> a
two x = x

-------
-- 3 --
-----------------
-- f (a b) = A --
-----------------

three :: (a,b) -> a
three (a,b) = a

-----------------------------------
-- Match Function Names to Types --
-----------------------------------

-------
-- 1 --
----------
-- show --
------------------------------
-- a) show a => a -> String --
-- b) Show a -> a -> String --
-- c) Show a => a -> String --
------------------------------

-- c

-------
-- 2 --
----------
-- (==) --
-------------------------------
-- a) a -> a -> Bool         --
-- b) Eq a => A -> Bool      --
-- c) Eq a => a -> a -> Bool --
-- d) Eq a -> a -> a -> Bool --
-------------------------------

-- c

-------
-- 3 --
---------
-- fst --
--------------------
-- a) b -> a      --
-- b) (a, b) -> a --
-- c) (a, b) -> b --
--------------------

-- b

-------
-- 4 --
---------
-- (+) --
--------------------------------
-- a) a -> a -> a             --
-- b) num a => a -> a -> a    --
-- c) Num a => a -> a -> a    --
-- d) Num a -> a -> a -> Bool --
-- e) Num a => a -> a -> Bool --
--------------------------------

-- c
