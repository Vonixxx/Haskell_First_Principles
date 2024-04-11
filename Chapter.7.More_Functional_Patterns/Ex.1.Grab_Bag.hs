--------------
-- Grab Bag --
--------------

-------
-- 1 --
-------
-- Which (two or more) of the following are equivalent?
-- a) mTh x y z = x * y * z
-- b) mTh x y = \z -> x * y * z
-- c) mTh x = \y -> \z -> x * y * z
-- d) mTh = \x -> \y -> \z -> x * y * z

-- All of the above

-------
-- 2 --
-------
-- The type of mTh is Num a => a -> a -> a -> a.
-- Which is the type of mTh 3?
-- a) Integer -> Integer -> Integer
-- b) Num a => a -> a -> a -> a
-- c) Num a => a -> a
-- d) Num a => a -> a -> a

-- d

-------
-- 3 --
-------
-- Rewrite using lambda.
-- Example: addOne x = x + 1
--          addOne = \x -> x + 1

-- a) a n = case odd n of
--                        True -> f n
--                        False -> n
--                        where f n = n + 1

a :: Int -> Int
a = \x -> x + 1

-- b) b x y = (if x > y then y else x) + 5

b :: Int -> Int -> Int
b = \x -> \y -> (if x > y
                   then y
                   else x) + 5

-- c) Remove the lambda.
--    c f = \x -> \y -> f y x

c x y f = f y x
