-----------------------
-- Chapter Exercises --
-----------------------

import Data.Char

---------------
-- Data.Char --
----------------------------------
-- Tip: isUpper :: Char -> Bool --
--      toUpper :: Char -> Char --
----------------------------------

-------
-- 1 --
------------------------
-- λ> one "HbEfLrLxO" --
-- λ> one "HELLO"     --
------------------------

ys :: String
ys = ""

one :: String -> String
one "" = ys
one (x:xs)
    | isUpper x = ys ++ [x] ++ one xs
    | otherwise = one xs

-------
-- 2 --
--------------------
-- λ> two "julie" --
-- λ> two "Julie" --
--------------------

two :: String -> String
two (x:xs) = if isUpper x
               then x:xs
               else toUpper x:xs

-------
-- 3 --
---------------------
-- λ> three "woot" --
-- λ> three "WOOT" --
---------------------

ys' = ""

three :: String -> String
three "" = ys'
three (x:xs)
      | not (isUpper x) = ys' ++ (:[]) (toUpper x) ++ three xs
      | otherwise       = three xs

-------
-- 4 --
----------------------
-- λ> four "denise" --
-- λ> four 'D'      --
----------------------

four :: String -> Char
four xs = toUpper (head xs)

-------
-- 5 --
-----------------
-- Rewrite it  --
-- point-free. --
-----------------

five :: String -> Char
five = toUpper . head

-------------
-- Ciphers --
----------------------------------------------------------------------
-- Write a Caesar cipher that shifts the message x amount           --
-- in a chosen direction depending on the arguments, and a decoder. --
----------------------------------------------------------------------
-- Tip: chr :: Int -> Char               --
--      ord :: Char -> Int               --
--      mod :: Integral a => a -> a -> a --
-------------------------------------------

charShiftR :: Integral a => a -> a -> a
charShiftR x y = (+) 97 $ (x - 97 + y) `mod` 26

charShiftL :: Integral a => a -> a -> a
charShiftL x y = (+) 97 $ (x - 97 - y) `mod` 26

cipher :: String -> Char -> Int -> String
cipher xs dir shift = go xs []
                      where go xs ys
                             | null xs    = ys
                             | dir == 'l' = go (tail xs)
                                               ((++) ys  $ (:[]) $ chr $ charShiftL (ord (head xs)) shift)
                             | dir == 'r' = go (tail xs)
                                               ((++) ys  $ (:[]) $ chr $ charShiftR (ord (head xs)) shift)

-- The decoder can be achieved by knowing what
-- direction and amount of shifts the end user used, and
-- applying the reverse direction with the same amount of shifts.

-----------------------------------------
-- Writing Your Own Standard Functions --
-----------------------------------------
-- myAnd :: [Bool]                --
--       -> Bool                  --
-- myAnd [] = True                --
-- myAnd (x:xs) = if x == False   --
--                  then False    --
--                  else myAnd xs --
------------------------------------
-- or --
----------------------------------
-- myAnd [] = True              --
-- myAnd (x:xs) = x && myAnd xs --
----------------------------------

-------
-- 1 --
--------------------------------------
-- λ> one [False,False,False,True]  --
-- λ> True                          --
-- λ> one [False,False,False,False] --
-- λ> False                         --
--------------------------------------

one' :: [Bool] -> Bool
one' [False] = False
one' (x:xs)  = x || one' xs

-------
-- 2 --
-------------------------
-- λ> two even [1,3,5] --
-- λ> False            --
-- λ> two even [1,2,5] --
-- λ> True             --
-------------------------

-- Identical to the above.

-------
-- 3 --
------------------------
-- λ> three 2 [1,3,5] --
-- λ> False           --
-- λ> three 2 [1,2,5] --
-- λ> True            --
-------------------------

three' :: Eq a => a -> [a] -> Bool
three' x [] = False
three' x (y:ys)
       | x == y    = True
       | otherwise = three' x ys

-------
-- 4 --
---------------------
-- λ> four "house" --
-- λ> "esuoh"      --
---------------------
-- λ> four [1..5]  --
-- λ> [5,4,3,2,1]  --
---------------------

str = []

four' :: [a] -> [a]
four' [] = str
four' (x:xs)
      | length (x:xs) == length str = str
      | otherwise                   = four' xs ++ [x] ++ str

-------
-- 5 --
---------------------------
-- λ> five [[1,2],[3,4]] --
-- λ> [1,2,3,4]          --
---------------------------

five' :: [[a]] -> [a]
five' [x]    = x
five' []     = []
five' (x:xs) = x ++ five' xs

-------
-- 6 --
----------------------------------
-- λ> six (\x -> [1, x, 3]) [2] --
-- λ> [1,2,3]                   --
----------------------------------------------
-- λ> six (\x -> "WO "++[x]++" HOO ") "123" --
-- λ> "WO 1 HOO WO 2 HOO WO 3 HOO "         --
----------------------------------------------

list = []

six :: (a -> [b]) -> [a] -> [b]
six fn [] = []
six fn xs
    | length list == length xs = list
    | otherwise = list ++ six fn (head xs)


-- 7. squishAgain flattens a list of lists into a list. This time, re-use the
-- squishMap function:
-- squishAgain :: [[a]] -> [a]
-- squishAgain = undefined
-- 8. myMaximumBy takes a comparison function and a list and returns
-- the greatest element of the list based on the last value that
-- the comparison returns GT for. If you import maximumBy from
-- Data.List, you’ll see that the type is:CHAPTER 9. THIS THING AND SOME MORE STUFF
-- 343
-- Foldable t => (a -> a -> Ordering)
-- -> t a -> a
-- Rather than:
-- (a -> a -> Ordering) -> [a] -> a
-- myMaximumBy :: (a -> a -> Ordering)
-- -> [a] -> a
-- myMaximumBy = undefined
-- Prelude> xs = [1, 53, 9001, 10]
-- Prelude> myMaximumBy compare xs
-- 9001
-- 9. myMinimumBy takes a comparison function and a list and returns
-- the least element of the list based on the last value that the
-- comparison returns LT for:
-- myMinimumBy :: (a -> a -> Ordering)
-- -> [a] -> a
-- myMinimumBy = undefined
-- Prelude> xs = [1, 53, 9001, 10]
-- Prelude> myMinimumBy compare xs
-- 1
-- 10. Using the myMinimumBy and myMaximumBy functions, write your own
-- versions of maximum and minimum. If you have GHC 7.10 or newer,
-- you’ll see a type constructor that wants a Foldable instance in-
-- stead of a list, as has been the case for many functions so far:
-- myMaximum :: (Ord a) => [a] -> a
-- myMaximum = undefined
-- myMinimum :: (Ord a) => [a] -> a
-- myMinimum = undefined
