--------------
-- Grab Bag --
--------------

-------
-- 1 --
----------------------------------------------------------
-- Which (two or more) of the following are equivalent? --
----------------------------------------------------------
-- a) one x y z = x * y * z             --
-- b) one x y = \z -> x * y * z         --
-- c) one x = \y -> \z -> x * y * z     --
-- d) one = \x -> \y -> \z -> x * y * z --
------------------------------------------

-- All of the above.

-------
-- 2 --
--------------------------------------
-- two :: Num a => a -> a -> a -> a --
-- λ> two 3                         --
--------------------------------------
-- a) Num a => a -> a               --
-- b) Num a => a -> a -> a          --
-- c) Num a => a -> a -> a -> a     --
-- d) Integer -> Integer -> Integer --
--------------------------------------

-- b

-------
-- 3 --
---------------------------------
-- Add and remove the lambdas. --
-----------------------------------------
-- a) threeA n = case odd n of         --
--                   True  -> f n      --
--                   False -> n        --
--                   where f n = n + 1 --
                                       --
-- b) threeB x y = (if x > y           --
--                    then y           --
--                    else x) + 5      --
                                       --
-- c) threeC f = \x -> \y -> f y x     --
-----------------------------------------

-- a)

threeA :: Num a => a -> a
threeA = \x -> x + 1

-- b)

threeB :: Num a => a -> a -> a
threeB = \x -> \y -> (if x > y
                        then y
                        else x) + 5

-- c)

threeC :: a -> a -> (a -> a -> b) -> b
threeC x y f = f y x
