--------------------
-- Apply Yourself --
------------------------------------------------------------------------
-- The function is unapplied, so the compiler will infer              --
-- a maximally polymorphic type. The second function has been         --
-- applied to a value, so the inferred type signature is less         --
-- polymorphic. Figure out how the type would change and why it does. --
------------------------------------------------------------------------

-------
-- 1 --
-------------------------------
-- (++) :: [a] -> [a] -> [a] --
-- myConcat x = x ++ " yo"   --
-------------------------------

-- (++) :: [Char] -> [Char] -> [Char]

-------
-- 2 --
---------------------------------
-- (*) :: Num a => a -> a -> a --
-- myMult x = (x / 3) * 5      --
---------------------------------

-- (*) :: Fractional a => a -> a -> a

-------
-- 3 --
---------------------------------
-- take :: Int -> [a] -> [a]   --
-- myTake x = take x "hey you" --
---------------------------------

-- take :: Int -> [Char] -> [Char]

-------
-- 4 --
------------------------------------
-- (>) :: Ord a => a -> a -> Bool --
-- myCom x = x > (length [1..10]) --
------------------------------------

-- (>) :: Int -> Int -> Bool

-------
-- 5 --
------------------------------------
-- (<) :: Ord a => a -> a -> Bool --
-- myAlph x = x < 'z'             --
------------------------------------

-- (<) :: Char -> Char -> Bool
