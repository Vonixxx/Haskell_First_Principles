---------------------
-- Will They Work? --
---------------------
-- Decide if the following will work,
-- what result they will return if they do, and why.

-------
-- 1 --
-------
-- max (length [1, 2, 3]) (length [8, 9, 10, 11, 12])

-- Correct
-- Result: 5
-- Reason: max :: Ord a => a -> a -> a
-- it returns the element a highest in the order hierarchy

-------
-- 2 --
-------
-- compare (3 * 4) (3 * 5)

-- Correct
-- Result: LT (i.e. 12 is lower than 15)
-- Reason: compare :: Ord a => a -> a -> Comparing
-- LT means Lower Than, other possible results are GT and EQ.

-------
-- 3 --
-------
--  compare "Julie" True

-- Incorrect
-- Result: Error
-- Reason: compare :: Ord a => a -> a -> Comparing
-- the function requires both elements to be of the same type

-------
-- 4 --
-------
-- (5 + 3) > (3 + 6)

-- Correct
-- Result: False
-- Reason: (>) :: Ord a => a -> a -> Bool
-- 8 is not greater than 9, so the result is False
