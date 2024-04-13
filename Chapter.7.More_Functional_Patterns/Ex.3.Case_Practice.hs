-------------------
-- Case Practice --
-------------------------------------
-- Rewrite using case expressions. --
-------------------------------------

-------
-- 1 --
--------------------------
-- one x y = if (x > y) --
--             then x   --
--             else y   --
--------------------------

one :: Ord a
    => a
    -> a
    -> a
one x y = case x > y of
              True  -> x
              False -> y

-------
-- 2 --
--------------------------
-- two x = if odd x     --
--           then x     --
--           else (x+2) --
--------------------------

two :: Integral a
    => a
    -> a
two x = case odd x of
            True  -> x
            False -> x + 2

-------
-- 3 --
-----------------------------------
-- three x = case compare x 0 of --
--               GT -> 1         --
--               LT -> -1        --
-----------------------------------

three :: (Num a,Ord a) => a -> a
three x = case compare x 0 of
              GT -> 1
              EQ -> 0
              LT -> -1
