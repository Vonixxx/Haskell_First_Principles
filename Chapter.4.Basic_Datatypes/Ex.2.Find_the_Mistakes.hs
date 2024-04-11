-----------------------
-- Find the Mistakes --
-----------------------
-- The following lines of code may have mistakes, fix them.

-------
-- 1 --
-------
-- not True && true

one :: Bool
one = not (True && True)

-------
-- 2 --
-------
-- not (x = 6)

two :: Integer -> Bool
two x = not (x == 6)

-------
-- 3 --
-------
-- (1 * 2) > 5

-- Correct

-------
-- 4 --
-------
-- [Merry] > [Happy]

four :: Bool
four = "merry" > "happy"

-------
-- 5 --
-------
-- [1, 2, 3] ++ "look at me!"

five :: String
five = "1,2,3" ++ "look at me"
