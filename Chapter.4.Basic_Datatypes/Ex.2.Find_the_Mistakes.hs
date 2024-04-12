-----------------------
-- Find the Mistakes --
--------------------------------------------------------------
-- The following lines of code may have mistakes, fix them. --
--------------------------------------------------------------

-------
-- 1 --
----------------------
-- not True && true --
----------------------

-- Incorrect.
-- Reason: data Bool = False | True
-- the data constructors' first letter is capitalized.

one :: Bool
one = not (True && True)

-------
-- 2 --
-----------------
-- not (x = 6) --
-----------------

-- Incorrect.
-- Reason: (=) is assignment in Haskell,
-- whereas (==) is needed to test for equality.

two :: (Num a,Eq a) => a -> Bool
two x = not (x == 6)

-------
-- 3 --
-----------------
-- (1 * 2) > 5 --
-----------------

-- Correct.

-------
-- 4 --
-----------------------
-- [Merry] > [Happy] --
-----------------------

-- Incorrect.
-- Reason: type String = [Char]
-- String is a list of Char, one
-- denotes Char with the use of ''.

four :: Bool
four = ['M','e','r','r','y'] > ['H','a','p','p','y']

-------
-- 5 --
--------------------------------
-- [1, 2, 3] ++ "look at me!" --
--------------------------------

-- Incorrect.
-- Reason: (++) :: [a] -> [a] -> [a]
-- in order to concatenate two lists,
-- both must have elements of the same type.

five :: String
five = "1,2,3" ++ "look at me"
