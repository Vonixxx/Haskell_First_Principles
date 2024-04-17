-----------------------
-- Zipping Exercises --
-----------------------

-------
-- 1 --
--------------------------------------
-- Write your own version of `zip`. --
--------------------------------------
-- one :: [a]      --
--     -> [b]      --
--     -> [(a, b)] --
-- one = ???       --
---------------------

one :: [a]
    -> [b]
    -> [(a, b)]
one xs ys = go xs ys []
            where go xs ys ss
                   | null xs || null ys = ss
                   | otherwise = go (tail xs)
                                    (tail ys)
                                    ((++) ss $ (:[]) (head xs,head ys))

-------
-- 2 --
--------------------------------
-- Do the same for `zipWith`. --
--------------------------------
-- two :: (a -> b -> c) --
--     -> [a]           --
--     -> [b]           --
--     -> [c]           --
-- two = ???            --
--------------------------

two :: (a -> b -> c)
    -> [a]
    -> [b]
    -> [c]
two fn xs ys = go xs ys []
               where go xs ys ss
                      | null xs || null ys = ss
                      | otherwise = go (tail xs)
                                       (tail ys)
                                       ((++) ss $ (:[]) $ fn (head xs) (head ys))

-------
-- 3 --
---------------------------------------
-- Rewrite your `zip` in             --
-- terms of the `zipWith` you wrote. --
---------------------------------------

three = undefined
