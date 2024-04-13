-----------------------
-- Chapter Exercises --
-----------------------

---------------------
-- Multiple Choice --
---------------------

-------
-- 1 --
-----------------------------
-- A polymorphic function? --
------------------------------------------------
-- a) Has a concrete type.                    --
-- b) Has multiple arguments.                 --
-- c) May resolve to values of                --
--    different types, depending on inputs.   --
-- d) Changes things into sheep when invoked. --
------------------------------------------------

-- c

-------
-- 2 --
---------------------------------------------
-- f and g have types Char -> String and   --
-- String -> [String], g . f has the type? --
---------------------------------------------
-- a) [[String]]                 --
-- b) Char -> String             --
-- c) Char -> [String]           --
-- d) Char -> String -> [String] --
-----------------------------------

-- c

-------
-- 3 --
----------------------------------------------------
-- f has the type Ord a => a -> a -> Bool, what   --
-- is the type when applied to one numeric value? --
----------------------------------------------------
-- a) Ord a => a -> Bool          --
-- b) Num -> Num -> Bool          --
-- c) Ord a => a -> a -> Integer  --
-- d) (Ord a, Num a) => a -> Bool --
------------------------------------

-- d

-------
-- 4 --
---------------------------------------------
-- A function with the type (a -> b) -> c? --
--------------------------------------------------
-- a) Is a higher-order function.               --
-- b) Must take a tuple as its first argument.  --
-- c) Has its parameters in alphabetical order. --
-- d) Requires values of three different types. --
--------------------------------------------------

-- b

-------
-- 5 --
------------------------------------------------------
-- Given the following, what is the type of f True? --
------------------------------------------------------
-- f :: a -> a --
-- f x = x     --
-------------------------------
-- a) f True :: a            --
-- b) f True :: Bool         --
-- c) f True :: String       --
-- d) f True :: Bool -> Bool --
-------------------------------

-- b

----------------------
-- Let’s Write Code --
----------------------

-------
-- 1 --
-------
-- one :: Integral a => a -> a
-- one x = tenth
--         where xLast = x     `div` 10
--               tenth = xLast `mod` 10

-- a) Rewrite it using divMod.

-- b) Does the divMod version have the same type as the original?

-- c) Now change it such that it gets the hundreth of an integral.

-------
-- 2 --
----------------------------------------------
-- Implement the following once using       --
-- a case expression and once with a guard. --
----------------------------------------------
-- two :: a -> a -> Bool -> a --
-- two x _ False = x          --
-- two _ y True  = y          --
--------------------------------

two :: a -> a -> Bool -> a
two x y bool
        | bool     = y
        | not bool = x

two' :: a -> a -> Bool -> a
two' x y bool = case bool of
                    True  -> y
                    False -> x

-------
-- 3 --
---------------------------------------
-- g :: (a -> b) -> (a, c) -> (b, c) --
-- g = ???                           --
---------------------------------------

g :: (a -> b) -> (a, c) -> (b, c)
g aToB (x,y) = (aToB x,y)

-------
-- 4 --
----------------------------------------------------
-- Write the point-free version of the following. --
----------------------------------------------------
-- roundTrip :: (Show a,Read a) => a -> a --
-- roundTrip a = read (show a)            --
--                                        --
-- main = do                              --
--  print (id 4)                          --
--  print (roundTrip 4)                   --
--------------------------------------------

roundTrip :: (Show a,Read a) => a -> a
roundTrip = read . show

main = do
 print . id        $ 4
 print . roundTrip $ 4
