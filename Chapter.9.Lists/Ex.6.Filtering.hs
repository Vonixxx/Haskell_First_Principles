---------------
-- Filtering --
---------------

-------
-- 1 --
---------------------------------------------
-- Write a function that gives the         --
-- multiples of 3 out of a list from 1–30. --
---------------------------------------------

one :: Integral a => [a] -> [a]
one xs = [x | x <- xs,x `rem` 3 == 0]

-------
-- 2 --
--------------------------------------
-- Compose the above with `length`. --
--------------------------------------

two :: Integral a => [a] -> Int
two xs = length $ one xs

-------
-- 3 --
-------------------
-- Tip: `words`. --
-----------------------------------------
-- λ> three "the brown dog was a goof" --
-- λ> ["brown","dog","was","goof"]     --
-----------------------------------------

three :: String -> [String]
three = filter (/= "the") . filter (/= "a") . filter (/= "an") . words
