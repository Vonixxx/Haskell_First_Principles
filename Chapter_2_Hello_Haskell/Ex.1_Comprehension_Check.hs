-------------------------
-- Comprehension Check --
-------------------------

-- 1.
-- Given the following lines of code as they might appear in a
-- source file:
half   x = x / 2
square x = x * x
-- Use the functions half and square
-- in some experimental expressions.

one :: Float
one = half 15 - square 20

-- 2.
-- Write one function that has one parameter
-- and works for all the following expressions:
-- 3.14 * (5 * 5)
-- 3.14 * (2 * 2)
-- 3.14 * (4 * 4)
-- 3.14 * (10 * 10)

two :: Integer -> Float
two x = 3.14 * fromInteger (x * x)

-- 3.
-- There is a value in Prelude called pi.
-- Rewrite your function to use pi instead of 3.14.

twoPi :: Integer -> Float
twoPi x = pi * fromInteger (x * x)
