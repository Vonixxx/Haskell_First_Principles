-----------------------
-- Chapter Exercises --
-----------------------

import Data.List ( intercalate )

---------------------
-- Review of Types --
---------------------

-------
-- 1 --
---------------------------------------------------
-- What's the type of                            --
-- [[True, False], [True, True], [False, True]]? --
---------------------------------------------------
-- a) [a]         --
-- b) Bool        --
-- c) [[Bool]]    --
-- d) mostly True --
--------------------

-- c

-------
-- 2 --
-------------------------------------------------
-- Which has the same type as                  --
-- [[True, False],[True, True],[False, True]]? --
-----------------------------------------------------
-- a) [3 == 3, 6 > 5, 3 < 4]                       --
-- b) [[3 == 3], [6 > 5], [3 < 4]]                 --
-- c) ["Bool", "more Bool", "Booly Bool!"]         --
-- d) [(True, False), (True, True), (False, True)] --
-----------------------------------------------------

-- d

-------
-- 3 --
------------------------------------------
-- Which of the statements are correct? --
------------------------------------------
-- three :: [a] -> [a] -> [a] --
-- three xs ys = xs ++ ys     --
-----------------------------------------------------
-- a) All of the above.                            --
-- b) xs and ys must both be lists.                --
-- c) xs and ys must be of the same type.          --
-- d) If xs is a String, then ys must be a String. --
-----------------------------------------------------

-- a

-------
-- 4 --
-----------------------------------
-- For the function above,       --
-- which is a valid application? --
-----------------------------------
-- a) three "Hello World"       --
-- b) three "Hello" "World"     --
-- c) three ["Hello", "World"]  --
-- d) three [1, 2, 3] "a, b, c" --
----------------------------------

-- b

------------------------
-- Reviewing Currying --
--------------------------------
-- Say what value results     --
-- from further applications. --
--------------------------------

frappe :: String -> String
frappe = flippy "haha"

appedCatty :: String -> String
appedCatty = cattyConny "woops"

flippy :: String -> String -> String
flippy = flip cattyConny

cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

-------
-- 1 --
--------------------------
-- appedCatty "woohoo!" --
--------------------------

appedCatty' :: String
appedCatty' = cattyConny "woops" "woohoo!"

-- λ> "woops mrow woohoo!"

-------
-- 2 --
----------------
-- frappe "1" --
----------------

frappe' :: String
frappe' = flippy "haha" "1"

-- λ> "1 mrow haha"

-------
-- 3 --
-----------------------------
-- frappe (appedCatty "2") --
-----------------------------

frappe'' :: String
frappe'' = flippy "haha" (appedCatty "2")

-- λ> "woops mrow 2 mrow haha"

-------
-- 4 --
--------------------------------
-- appedCatty (frappe "blue") --
--------------------------------

appedCatty'' :: String
appedCatty'' = cattyConny "woops" (frappe "blue")

-- λ> "woops mrow blue mrow haha"

-------
-- 5 --
---------------------------------------------------------
-- cattyConny (frappe "pink")                          --
--            (cattyConny "green" $ appedCatty "blue") --
---------------------------------------------------------

cattyConny' :: String
cattyConny' = (frappe "pink") ++ " mrow " ++ (cattyConny "green" $ appedCatty "blue")

-- λ> "pink mrow haha mrow green mrow woops mrow blue"

-------
-- 6 --
------------------------------------------------
-- cattyConny (flippy "Pugs" "are") "awesome" --
------------------------------------------------

cattyConny'' :: String
cattyConny'' = (flippy "Pugs" "are") ++ " mrow " ++ "awesome"

-- λ> "are mrow Pugs mrow awesome"

---------------
-- Recursion --
---------------

dividedBy :: Integral a => a -> a -> (a,a)
dividedBy numerator denominator = go numerator denominator 0
                                  where go n d count
                                         | n < d     = (count, n)
                                         | otherwise = go (n - d) d (count + 1)

-------
-- 1 --
-------------------------------------------------
-- Write out all the steps the above           --
-- function takes with the arguments 15 and 2. --
-------------------------------------------------

-- dividedBy 15 2
-- iteration 1: 15 < 2 is False -> otherwise = go (15 - 2) 2 (0 + 1)
-- iteration 2: 13 < 2 is False -> otherwise = go (13 - 2) 2 (1 + 1)
-- ...
-- iteration 8: 1 < 2 is True -> λ> (7,1)

-------
-- 2 --
-------------------------------------------------
-- Write a recursive function                  --
-- that sums all numbers from x to 1.          --
-- If x is 5 -> 5 + 4 + 3 + 2 + 1 = 15.        --
-- The type should be (Eq a, Num a) => a -> a. --
-------------------------------------------------

two :: (Num a,Eq a) => a -> a
two 0 = 0
two x = two (x - 1) + x

-- two 5 = two 4 + 5
-- two 4 = two 3 + 4
-- two 3 = two 2 + 3
-- two 2 = two 1 + 2
-- two 1 = two 0 + 1

-------
-- 3 --
----------------------------------------------------------------------
-- Write a recursive function that multiplies two integral numbers  --
-- using summation. The type should be (Integral a) => a -> a -> a. --
----------------------------------------------------------------------

three :: (Integral a) => a -> a -> a
three multed multator = go multed multed multator
                        where go multed originalMulted multator
                               | multator == 1 = multed
                               | otherwise     = go (multed + originalMulted) originalMulted (multator - 1)

----------------------
-- Fixing dividedBy --
--------------------------------------------------
-- The dividedBy function has issues. Fix them. --
-------------------------------------------------------------------------------
-- a) It is a partial function and doesn’t return a                          --
--    result when given a divisor that is 0 or less.                         --
-- b) Zero is undefined for division in math, so we ought to use a           --
--    datatype that dictates that there is no result when we divide by zero. --
-------------------------------------------------------------------------------

type Numerator   = Integer
type Denominator = Integer
data Result      = Result (Integer,Integer) | DividedByZero String
 deriving Show

dividedBy' :: Numerator -> Denominator -> Result
dividedBy' numerator denominator = go numerator denominator 0
                                   where go n d count
                                          | d == 0             = DividedByZero "Cannot divide by 0"
                                          | d > 0 && n < d     = Result (count,n)
                                          | d < 0 && n < abs d = Result (count,n)
                                          | otherwise          = go (n - abs d) d (count + 1)

--------------------------
-- McCarthy 91 Function --
-----------------------------------------------------------
-- λ> map mc91 [95..110]                                 --
-- λ> [91,91,91,91,91,91,91,92,93,94,95,96,97,98,99,100] --
--                                                       --
-- mc91 = ???                                            --
-----------------------------------------------------------

mc91 :: Int -> Int
mc91 x = if x < 100
           then 91
           else x - 10

------------------------
-- Numbers Into Words --
-----------------------------------------------
-- digits :: Int -> [Int]                    --
-- digits x = ???                            --
                                             --
-- digitToWord :: Int -> String              --
-- digitToWord x = ???                       --
                                             --
-- wordNumber :: Int -> String               --
-- wordNumber x = ???                        --
                                             --
-- λ> wordNumber 12324546                    --
-- λ> "one-two-three-two-four-five-four-six" --
-----------------------------------------------
-- Helpful Functions --
----------------------------------------
-- (:[]):: a -> [a]                   --
-- concat:: [[a]] -> [a]              --
-- (++):: [a] -> [a] -> [a]           --
-- map:: (a -> b) -> [a] -> [b]       --
-- div:: Integral a => a -> a -> a    --
-- mod:: Integral a => a -> a -> a    --
-- intercalate :: [a] -> [[a]] -> [a] --
----------------------------------------

digitToWord :: Int -> String
digitToWord x
            | x == 0 = "Zero"
            | x == 1 = "One"
            | x == 2 = "Two"
            | x == 3 = "Three"
            | x == 4 = "Four"
            | x == 5 = "Five"
            | x == 6 = "Six"
            | x == 7 = "Seven"
            | x == 8 = "Eight"
            | x == 9 = "Nine"

digits :: Int -> [Int]
digits x = go x []
           where go x xs
                  | x == 0    = xs
                  | otherwise = go (x `div` 10) (reverse $ (++) xs $ (:[]) $ mod x 10)

wordNumber :: Int -> String
wordNumber x = intercalate "-" $ map digitToWord $ digits x
