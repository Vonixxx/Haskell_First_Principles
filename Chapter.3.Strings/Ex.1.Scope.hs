-----------
-- Scope --
-----------------------------
-- Verify if the required  --
-- variables are in scope. --
-----------------------------

-------
-- 1 --
------------------
-- λ> x = 5     --
-- λ> y = 7     --
-- λ> z = x * y --
------------------

-- Yes

-------
-- 2 --
----------------------
-- λ> f = 3         --
-- λ> g = 6 * f + h --
----------------------

-- No
-- Reason: h is undefined

-------
-- 3 --
----------------------------
-- r      = d / 2         --
-- three d = pi * (r * r) --
----------------------------

-- No
-- Reason: no where clause

three :: Floating a => a -> a
three d = pi * (r * r)
          where r = d / 2

-------
-- 4 --
------------------------------
-- four d = pi * (r * r)    --
--          where r = d / 2 --
------------------------------

-- Yes
