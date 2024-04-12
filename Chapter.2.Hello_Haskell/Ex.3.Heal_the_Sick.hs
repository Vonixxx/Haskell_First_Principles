-------------------
-- Heal the Sick --
-------------------------------
-- Fix the broken functions. --
-------------------------------

-------
-- 1 --
-----------------------------
-- one x = 3. 14 * (x * x) --
-----------------------------

one :: Fractional a => a -> a
one x = 3.14 * (x * x)

-- λ> one 3
-- λ> 28.26

-------
-- 2 --
-------------------
-- two x = b * 2 --
-------------------

two :: Num a => a -> a
two x = x * 2

-- λ> two 2
-- λ> 4

-------
-- 3 --
---------------
-- x = 7     --
--  y = 10   --
-- z = x + y --
---------------

x :: Num a => a
x = 7

y :: Num a => a
y = 10

z :: Num a => a
z = x + y

-- λ> z
-- λ> 17
