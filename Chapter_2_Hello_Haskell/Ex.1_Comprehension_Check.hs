-------------------------
-- Comprehension Check --
-------------------------

-------
-- 1 --
-------
-- Use these functions in
-- some experimental expressions
-- half   x = x / 2
-- square x = x * x

half   x = x / 2
square x = x * x

one :: Float
one = half 15 - square 20

-------
-- 2 --
-------
-- Write a one-parameter function that
-- works for all the following expressions
-- 3.14 * (5 * 5)
-- 3.14 * (2 * 2)
-- 3.14 * (4 * 4)
-- 3.14 * (10 * 10)

two :: Float -> Float
two x = 3.14 * (x * x)

-------
-- 3 --
-------
-- Rewrite the function to use pi
-- (Prelude value) instead of 3.14

two' :: Float -> Float
two' x = pi * (x * x)
