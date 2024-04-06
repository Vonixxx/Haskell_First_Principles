----------------------
-- Parenthesization --
----------------------
-- Parenthesize the following
-- without changing the results

-------
-- 1 --
-------
-- 2 + 2 * 3 - 1

one :: Int
one = 2 + (2 * 3) - 1

-------
-- 2 --
-------
-- (^) 10 $ 1 + 1

two :: Int
two = 10 ^ (1 + 1)

-------
-- 3 --
-------
-- 2 ^ 2 * 4 ^ 5 + 1

three :: Int
three = ((2 ^ 2) * (4 ^ 5)) + 1

----------------------------
-- Equivalent Expressions --
----------------------------
-- Which pairs bear equivalent results

-------
-- 1 --
-------
-- a) 2
-- b) 1 + 1

-- Equal
-- a = b = 2

-------
-- 2 --
-------
-- a) 10 ^ 2
-- b) 10 + 9 * 10

-- Equal
-- a = b = 100

-------
-- 3 --
-------
-- a) 400 - 37
-- b) (-) 37 400

-- Unequal
-- a = 363
-- b = -363

-------
-- 4 --
-------
-- a) 100 / 3
-- b) 100 `div` 3

-- Unequal
-- a = 33.33
-- b = 33

-------
-- 5 --
-------
-- a) 2 * 5 + 18
-- b) 2 * (5 + 18)

-- Unequal
-- a = 28
-- b = 46

----------------------
-- Fun w/ Functions --
----------------------
-- z     = 7
-- y     = z + 8
-- x     = y ^ 2
-- waxOn = x * 5

-------
-- 1 --
-------
-- Provide the results of the following

-- 10 + waxOn

-- 1135

-- (+10) waxOn

-- 1135

-- (-) 15 waxOn

-- -1110

-- (-) waxOn 15

-- 1110

-------
-- 2 --
-------
-- Rewrite waxOn with a where clause

z = 7
x = y ^ 2
y = z + 8

waxOn :: Integer
waxOn = x * 5
        where z = 7
              y = z + 8
              x = y ^ 2

-------
-- 3 --
-------
-- Add the triple and waxOff functions
-- and modify waxOff to do other operations

triple :: Float -> Float
triple x = x * 3

waxOff :: Float -> Float
waxOff = triple

waxOffMod :: Float -> Float
waxOffMod x = triple x ^ 2 / 10
