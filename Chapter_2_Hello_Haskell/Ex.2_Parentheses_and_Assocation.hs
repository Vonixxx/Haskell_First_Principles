---------------------------------
-- Parentheses and Association --
---------------------------------

import Text.Printf ( printf )

-- Below are some pairs of functions that are alike except for parenthe-
-- sization. Read them carefully and decide whether the parentheses
-- change the results of the functions.

-- 1.
-- a) 8 + 7 * 9
-- b) (8 + 7) * 9

-- False

oneA :: Float
oneA = 8 + 7 * 9

oneB :: Float
oneB = (8 + 7) * 9

-- 2.
-- a) perimeter x y = x * 2 + y * 2
-- b) perimeter x y = (x * 2) + (y * 2)

-- True

twoA :: Integer -> Integer -> Float
twoA x y = fromInteger (x * 2 + y * 2)

twoB :: Integer -> Integer -> Float
twoB x y = fromInteger ((x * 2) + (y * 2))

-- 3.
-- a) f x = x / 2 + 9
-- b) f x = x / (2 + 9)

-- False

threeA :: Integer -> Float
threeA x = fromInteger x / 2 + 9

threeB :: Integer -> Float
threeB x = fromInteger x / (2 + 9)

-- Convenient function to verify the exercises
equalityChecker :: Float -> Float -> String
equalityChecker x y = printf "%f is %s to %f" x equality y
                      where equality = if x == y
                                         then "Equal"
                                         else "Unequal"
