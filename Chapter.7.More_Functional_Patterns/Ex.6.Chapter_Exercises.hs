-----------------------
-- Chapter Exercises --
-----------------------

---------------------
-- Multiple Choice --
---------------------

-------
-- 1 --
-------
-- A polymorphic function:
-- a) Changes things into sheep when invoked.
-- b) Has multiple arguments.
-- c) Has a concrete type.
-- d) May resolve to values of different types, depending on
-- inputs.

-- d

-------
-- 2 --
-------
-- Two functions named f and g have types Char -> String and
-- String -> [String], respectively. The composed function g . f
-- has the type:
-- a) Char -> String
-- b) Char -> [String]
-- c) [[String]]
-- d) Char -> String -> [String]

-- b

-------
-- 3 --
-------
-- A function f has the type Ord a => a -> a -> Bool, and we apply
-- it to one numeric value. What is the type now?
-- a) Ord a => a -> Bool
-- b) Num -> Num -> Bool
-- c) Ord a => a -> a -> Integer
-- d) (Ord a, Num a) => a -> Bool

-- d

-------
-- 4 --
-------
-- A function with the type (a -> b) -> c:
-- a) Requires values of three different types.
-- b) Is a higher-order function.
-- c) Must take a tuple as its first argument.
-- d) Has its parameters in alphabetical order.

-- c

-------
-- 5 --
-------
-- Given the following definition of f, what is the type of f True?
-- f :: a -> a
-- f x = x
-- a) f True :: Bool
-- b) f True :: String
-- c) f True :: Bool -> Bool
-- d) f True :: a

-- a

----------------------
-- Let’s Write Code --
----------------------

-------
-- 1 --
-------
-- The following function returns the tenth digit of an integral.
one :: Integral a => a -> a
one x = tenth
        where xLast = x     `div` 10
              tenth = xLast `mod` 10

-- a) Rewrite it using divMod.

-- b) Does the divMod version have the same type as the original?

-- c) Now change it such that it gets the hundreth of an integral.

-------
-- 2 --
-------
-- Implement the following once using
-- a case expression and once with a guard.
-- two :: a -> a -> Bool -> a
-- two x _ False = x
-- two _ y True  = y

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
-------
-- Fill in the definition.
-- g :: (a -> b) -> (a, c) -> (b, c)
-- g = undefined

g :: (a -> b) -> (a, c) -> (b, c)
g aToB (x,y) = (aToB x,y)

-------
-- 4 --
-------
-- Write the point-free version of the following.

-- roundTrip :: (Show a,Read a) => a -> a
-- roundTrip a = read (show a)

-- main = do
--  print (id 4)
--  print (roundTrip 4)

roundTrip :: (Show a,Read a) => a -> a
roundTrip a = read (show a)

main = do
 print . id        $ 4
 print . roundTrip $ 4
