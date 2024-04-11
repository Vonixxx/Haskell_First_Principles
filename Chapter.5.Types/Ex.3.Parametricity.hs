-------------------
-- Parametricity --
-------------------

-------
-- 1 --
-------
-- This has only two implementations. Write both possible versions of a -> a -> a.

first :: a -> a -> a
first = undefined

second :: a -> b -> a
second = undefined

-------
-- 2 --
-------
-- Implement a -> b -> b. How many implementations can it
-- have? Does its behavior change when the types of a and b change?

-- Two implementations

first' :: b -> b -> b
first' = undefined

second' :: a -> b -> b
second' = undefined

-- Behaviour is unchanging regardless of the types

first'' :: Int -> Int -> Int
first'' = undefined

second'' :: Int -> String -> String
second'' = undefined
