------------------
-- More Bottoms --
------------------

import Data.Bool ( bool )

-------
-- 1 --
-------------------------------
-- Will the following        --
-- return a value or bottom? --
--------------------------------------------
-- a) take 1 $ map (+1) [undefined, 2, 3] --
-- b) take 1 $ map (+1) [1, undefined, 3] --
-- c) take 2 $ map (+1) [1, undefined, 3] --
--------------------------------------------

-- a) λ> Exception
--    Reason: `take` here forces the evaluation of the
--             cons cell containing the undefined value.

-- b) λ> 2
--    Reason: the first element of
--            the list is not undefined.

-- c) λ> Exception
--    Reason: see reasoning on a.

-------
-- 2 --
------------------------------------
-- What does the following do?    --
-- What is its type? Describe it. --
--------------------------------------------
-- two xs = map (\x -> elem x "aeiou") xs --
--------------------------------------------

-- The function takes a list, then checks
-- whether each element is equal to one of the
-- elements from "aeiou", and places a boolean value in its place.

-------
-- 3 --
------------------------------------------
-- What is the result of the following? --
--------------------------------------------------
-- a) map (^2) [1..10]                          --
-- b) map sum [[1..5], [1..5], [1..5]]          --
-- c) map minimum [[1..10], [10..20], [20..30]] --
--------------------------------------------------

-- a) A list containing all numbers
--    from 1 to 10 raised to the power of 2.

-- b) A list containing 3
--    elements where each is equal to 15

-- c) A list containing 3 elements where
--    each is equal to 1, 10 and 20 respectively.


-------
-- 4 --
--------------------------------------------------------
-- Rewrite the following using `bool` from Data.Bool. --
--------------------------------------------------------
-- map (\x -> if x == 3 then (-x) else (x)) [1..10] --
------------------------------------------------------

four :: (Eq a,Num a)
     => a
     -> a
four x = bool x (-x) (x == 3)
