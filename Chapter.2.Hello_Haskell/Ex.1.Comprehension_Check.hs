-------------------------
-- Comprehension Check --
-------------------------

-------
-- 1 --
------------------------------------
-- Use these functions in         --
-- some experimental expressions. --
------------------------------------
-- half   x = x / 2               --
-- square x = x * x               --
------------------------------------

half :: Fractional a => a -> a
half x = x / 2

square :: Num a => a -> a
square x = x * x

one :: Fractional a => a
one = half 15 - square 20

-- λ> one
-- λ> -392.5

-------
-- 2 --
----------------------------------------------
-- Write a one-parameter function that      --
-- works for all the following expressions. --
----------------------------------------------
-- a) 3.14 * (5 * 5)                        --
-- b) 3.14 * (2 * 2)                        --
-- c) 3.14 * (4 * 4)                        --
-- d) 3.14 * (10 * 10)                      --
----------------------------------------------

two :: Fractional a => a -> a
two x = 3.14 * (x * x)

-- λ> two 5
-- λ> 78.5

-------
-- 3 --
--------------------------------------
-- Rewrite the function to use pi   --
-- (Prelude value) instead of 3.14. --
--------------------------------------

three :: Floating a => a -> a
three x = pi * (x * x)

-- λ> three 5
-- λ> 78.53982
