-------------------
-- Case Practice --
-------------------
-- Rewrite using case expressions.

-------
-- 1 --
-------
-- one x y = if (x > y) then x else y

one :: (Ord a) => a -> a -> a
one x y = case x > y of
              True  -> x
              False -> y

-------
-- 2 --
-------
-- two n = if even n then (n+2) else n

two :: Integral a => a -> a
two x = case even x of
            True  -> x + 2
            False -> x

-------
-- 3 --
-------
-- three x = case compare x 0 of
--               LT -> -1
--               GT -> 1

three x = case compare x 0 of
              GT -> 1
              EQ -> 0
              LT -> -1
