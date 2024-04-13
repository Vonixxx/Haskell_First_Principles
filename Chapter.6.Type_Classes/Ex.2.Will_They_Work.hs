---------------------
-- Will They Work? --
--------------------------------------
-- Do the following work? What      --
-- result will they return and why? --
--------------------------------------

-------
-- 1 --
--------------------------------------------------------
-- max (length [1, 2, 3]) (length [8, 9, 10, 11, 12]) --
--------------------------------------------------------

-- λ> 5
-- Reason: max :: Ord a => a -> a -> a
--         it returns the largest element a.

-------
-- 2 --
-----------------------------
-- compare (3 * 4) (3 * 5) --
-----------------------------

-- Result: LT
-- Reason: compare :: Ord a => a -> a -> Comparing
--         LT means Lower Than, other possible results are GT and EQ.

-------
-- 3 --
---------------------------
--  compare "Julie" True --
---------------------------

-- Result: Error
-- Reason: compare :: Ord a => a -> a -> Comparing
--         the function requires both elements to be of the same type.

-------
-- 4 --
-----------------------
-- (5 + 3) > (3 + 6) --
-----------------------

-- Result: False
-- Reason: (>) :: Ord a => a -> a -> Bool
--         8 is not greater than 9, the expression is False.
