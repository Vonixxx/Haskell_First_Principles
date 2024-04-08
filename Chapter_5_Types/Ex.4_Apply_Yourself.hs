--------------------
-- Apply Yourself --
--------------------

-- Look at these pairs of functions. One function is unapplied, so the
-- compiler will infer a maximally polymorphic type. The second
-- function has been applied to a value, so the inferred type signature
-- may have become concrete, or at least less polymorphic. Figure out
-- how the type would change and why.

-------
-- 1 --
-------
-- General function:
-- (++) :: [a] -> [a] -> [a]
-- Applied to a value:
-- myConcat x = x ++ " yo"

-- (++) :: [Char] -> [Char] -> [Char]

-------
-- 2 --
-------
-- General function:
-- (*) :: Num a => a -> a -> a
-- Applied to a value:
-- myMult x = (x / 3) * 5

-- (*) :: Fractional a => a -> a -> a

-------
-- 3 --
-------
-- General function:
-- take :: Int -> [a] -> [a]
-- Applied to a value:
-- myTake x = take x "hey you"

-- take :: Int -> [Char] -> [Char]

-------
-- 4 --
-------
-- General function:
-- (>) :: Ord a => a -> a -> Bool
-- Applied to a value:
-- myCom x = x > (length [1..10])

-- (>) :: Int -> Int -> Bool

-------
-- 5 --
-------
-- General function:
-- (<) :: Ord a => a -> a -> Bool
-- Applied to a value:
-- myAlph x = x < 'z'

-- (<) :: Char -> Char -> Bool
