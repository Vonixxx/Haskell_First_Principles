----------------------
-- Parenthesization --
-----------------------------------
-- Parenthesize the following    --
-- without changing the results. --
-----------------------------------

-------
-- 1 --
-------------------
-- 2 + 2 * 3 - 1 --
-------------------

one :: Num a => a
one = 2 + (2 * 3) - 1

-- λ> one
-- λ> 7

-------
-- 2 --
--------------------
-- (^) 10 $ 1 + 1 --
--------------------

two :: Num a => a
two = 10 ^ (1 + 1)

-- λ> two
-- λ> 100

-------
-- 3 --
-----------------------
-- 2 ^ 2 * 4 ^ 5 + 1 --
-----------------------

three :: Num a => a
three = ((2 ^ 2) * (4 ^ 5)) + 1

-- λ> three
-- λ> 4097

----------------------------
-- Equivalent Expressions --
------------------------------------------
-- Which pairs bear equivalent results? --
------------------------------------------

-------
-- 1 --
--------------
-- a) 2     --
-- b) 1 + 1 --
--------------

-- a) λ> 2
-- b) λ> 2

-------
-- 2 --
--------------------
-- a) 10 ^ 2      --
-- b) 10 + 9 * 10 --
--------------------

-- a) λ> 100
-- b) λ> 100

-------
-- 3 --
-------------------
-- a) 400 - 37   --
-- b) (-) 37 400 --
-------------------

-- a) λ> 363
-- b) λ> -363

-------
-- 4 --
--------------------
-- a) 100 / 3     --
-- b) 100 `div` 3 --
--------------------

-- a) λ> 33.33
-- b) λ> 33
-- Reason: (div) :: Integral a => a -> a -> a
--         (/)   :: Fractional a => a -> a -> a

-------
-- 5 --
---------------------
-- a) 2 * 5 + 18   --
-- b) 2 * (5 + 18) --
---------------------

-- a) λ> 28
-- b) λ> 46
-- Reason: (*) infixl 7
--         (+) infixl 6
-- Parentheses grant a higher precedence,
-- thus (*) no longer has the highest precedence.

----------------------
-- Fun w/ Functions --
----------------------
-- z     = 7     --
-- y     = z + 8 --
-- x     = y ^ 2 --
-- waxOn = x * 5 --
-------------------

-------
-- 1 --
-------------------------------------------
-- Provide the results of the following. --
-------------------------------------------
-- a) 10 + waxOn   --
-- b) (+10) waxOn  --
-- c) (-) 15 waxOn --
-- d) (-) waxOn 15 --
---------------------

-- a) λ> 1135
-- b) λ> 1135
-- c) λ> -1110
-- d) λ> 1110

-------
-- 2 --
----------------------------------------
-- Rewrite waxOn with a where clause. --
----------------------------------------

z :: Num a => a
z = 7

x :: Num a => a
x = y ^ 2

y :: Num a => a
y = z + 8

waxOn :: Num a => a
waxOn = x * 5
        where z = 7
              y = z + 8
              x = y ^ 2
