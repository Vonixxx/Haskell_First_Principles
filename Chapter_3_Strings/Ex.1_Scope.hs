-----------
-- Scope --
-----------

-------
-- 1 --
-------
-- Is y in scope for z

-- Prelude> x = 5
-- Prelude> y = 7
-- Prelude> z = x * y

-- Yes

-------
-- 2 --
-------
-- Is h in scope for g

-- Prelude> f = 3
-- Prelude> g = 6 * f + h

-- No
-- Reason: h is undefined

-------
-- 3 --
-------
-- Is everything we need to execute in scope
-- r      = d / 2
-- three d = pi * (r * r)

-- No
-- Reason:
three :: Float -> Float
three d = pi * (r * r)
          where r = d / 2

-------
-- 4 --
-------
-- Are r and d in scope
-- four d = pi * (r * r)
--          where r = d / 2

-- Yes
