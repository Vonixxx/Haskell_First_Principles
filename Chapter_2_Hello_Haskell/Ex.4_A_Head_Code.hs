-----------------
-- A Head Code --
-----------------
-- Determine what these
-- expressions will return

-------
-- 1 --
-------
-- let x = 5 in x

-- 5

-------
-- 2 --
-------
-- let x = 5 in x * x

-- 25

-------
-- 3 --
-------
-- let x = 5;
--     y = 6 in x * y

-- 30

-------
-- 4 --
-------
-- let x = 3;
--     y = 1000 in x + 3

----------------------------------------------
-- Rewrite the following with where clauses --
----------------------------------------------

-------
-- 1 --
-------
-- let x = 3
--     y = 1000
-- in x * 3 + y

one :: Int
one = x * 3 + y
      where x = 3
            y = 1000

-------
-- 2 --
-------
-- let y = 10
--     x = 10 * 5 + y
-- in x * 5

two :: Int
two = x * 5
      where y = 10
            x = 10 * 5 + y

-------
-- 3 --
-------
-- let x = 7
--     z = y * 10
--     y = negate x
-- in z / x + y

three :: Float
three = z / x + y
        where x = 7
              z = y * 10
              y = negate x
