------------------
-- Variety Pack --
------------------

-------
-- 1 --
-------
-- Given the following declarations:
-- k (x, y) = x
-- k1 = k ((4-1), 10)
-- k2 = k ("three", (1 + 2))
-- k3 = k (3, True)

-- a) What is the type of k?

-- k :: (a,b) -> a

-- b) What is the type of k2? Is it the same type as k1 or k3?

-- k1 :: (Num a,Num b) => (a,b) -> a
-- k2 :: Num b => (String,b) -> String
-- k3 :: Num a => (a,Bool) -> a

-- c) Which will return the number 3 as a result?

-- k3

-------
-- 2 --
-------
-- Fill in the definition of the following function:
-- two :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
-- two = undefined

two :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
two (a,b,c) (d,e,f) = ((a,d),(c,f))
