-------------------
-- Parametricity --
-------------------

-------
-- 1 --
--------------------------------------------------
-- This only has two implementations.           --
-- Write both possible versions of a -> a -> a. --
--------------------------------------------------

first :: a -> a -> a
first = undefined

second :: a -> b -> a
second = undefined

-------
-- 2 --
-------------------------------------------------------------------
-- Implement a -> b -> b.                                        --
-- a) How many implementations are there?                        --
-- b) Does its behavior change when the types of a and b change? --
-------------------------------------------------------------------

-- a)

first' :: b -> b -> b
first' = undefined

second' :: a -> b -> b
second' = undefined

-- b)

second'' :: (Num a,Ord b) => a -> b -> b
second'' = undefined
