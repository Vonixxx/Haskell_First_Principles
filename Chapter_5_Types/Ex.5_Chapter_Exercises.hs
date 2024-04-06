-----------------------
-- Chapter Exercises --
-----------------------

---------------------
-- Multiple Choice --
---------------------

-------
-- 1 --
-------
-- A value of type [a] is:
-- a) a list of alphabetic characters
-- b) a list of lists
-- c) a list of elements that are all of some type a
-- d) a list of elements that are all of different types

-- c

-------
-- 2 --
-------
-- A function of type [[a]] -> [a] could:
-- a) take a list of strings as an argument
-- b) transform a character into a string
-- c) transform a string into a list of strings
-- d) take two arguments

-- a

-------
-- 3 --
-------
-- A function of type [a] -> Int -> a:
-- a) takes one argument
-- b) returns one element of type a from a list
-- c) must return an Int value
-- d) is completely fictional

-- b

-------
-- 4 --
-------
-- A function of type (a, b) -> a:
-- a) takes a list argument and returns a Char value
-- b) has zero arguments
-- c) takes a tuple argument and returns the first value
-- d) requires that a and b have different types

-- c

------------------------
-- Determine the Type --
------------------------

-------
-- 1 --
-------
-- Determine the values returned by these
-- applications and the types of those values.

-- a) (* 9) 6

-- Value: 54
-- Type: Num a => a

-- b) head [(0,"doge"),(1,"kitteh")]

-- Value: (0,"doge")
-- Type: Num a => (a,String)

-- c) head [(0 :: Integer,"doge"),(1,"kitteh")]

-- Value: (0,"doge")
-- Type: (Integer,String)

-- d) if False then True else False

-- Value: False
-- Type: Bool

-- e) length [1, 2, 3, 4, 5]

-- Value: 5
-- Type: Int

-- f) (length [1, 2, 3, 4]) > (length "TACOCAT")

-- Value: False
-- Type: Bool

-------
-- 2 --
-------
-- Given:
-- x = 5
-- y = x + 5
-- w = y * 10
-- What is the type of w?

-- Num a => a

-------
-- 3 --
-------
-- Given:
-- x = 5
-- y = x + 5
-- z y = y * 10
-- What is the type of z?

-- Num a => a -> a

-------
-- 4 --
-------
-- Given:
-- x = 5
-- y = x + 5
-- f = 4 / y
-- What is the type of f?

-- Fractional a => a

-------
-- 5 --
-------
-- Given:
-- x = "Julie"
-- y = " <3 "
-- z = "Haskell"
-- f = x ++ y ++ z
-- What is the type of f?

-- String

----------------------
-- Does it Compile? --
----------------------
-- For each set of expressions, figure out which expression,
-- if any, causes the compiler to fail and why, then fix them.

-------
-- 1 --
-------
-- bigNum = (^) 5 $ 10
-- wahoo = bigNum $ 10

-- Doesn't compile
-- Reason: bigNum does not await another argument, yet one is given

bigNum = (^) 5 $ 10
wahoo  = bigNum

-------
-- 2 --
-------
-- x = print
-- y = print "woohoo!"
-- z = x "hello world"

-- Compiles

-------
-- 3 --
-------
-- a = (+)
-- b = 5
-- c = b 10
-- d = c 200

-- Doesn't compile
-- Reason: c and d have no operator

a = (+)
b = 5
c = a b 10
d = a c 200

-------
-- 4 --
-------
-- a' = 12 + bTwo
-- b' = 10000 * cTwo

-- Doesn't compile
-- Reason: c is undefined

c' = 3
a' = 12 + b'
b' = 10000 * c'

----------------------------------------
-- Type Variable or Type Constructor? --
----------------------------------------
-- You will be shown a type declaration, and you should categorize
-- each type. The choices are: a fully polymorphic type variable,
-- a constrained polymorphic type variable, or a concrete type
-- constructor.

-- Example: f :: Num a => a -> b -> Int -> Int
--                       [1]  [2]  [3]    [4]
-- Answers: (1) constrained polymorphic
--          (2) fully polymorphic
--          (3 and 4) concrete

-------
-- 1 --
-------
-- f :: zed -> Zed -> Blah
--     [1]    [2]    [3]
-- Answers: (1) fully polymorphic
--          (2 and 3) concrete

-------
-- 2 --
-------
-- f :: Enum b => a -> b -> C
--               [1]  [2]  [3]
-- Answers: (1) fully polymorphic
--          (2) constrained polymorphic
--          (3) concrete

-------
-- 3 --
-------
-- f :: f -> g -> C
--     [1]  [2]  [3]
-- Answers: (1 and 2) fully polymorphic
--          (3) concrete

----------------------------
-- Write a Type Signature --
----------------------------
-- Add a type signature.

-------
-- 1 --
-------
-- functionH ::
-- functionH (x:_) = x

functionH :: [a] -> a
functionH (x:_) = x

-------
-- 2 --
-------
-- functionC ::
-- functionC x y = if (x > y)
--                   then True
--                   else False

-- Reformatting reason: redundant if-then-else expression

functionC :: (Ord a) => a -> a -> Bool
functionC x y = x > y

-------
-- 3 --
-------
-- functionS ::
-- functionS (x,y) = y

functionS :: (a,b) -> b
functionS (x,y) = y

--------------------------------------
-- Given a Type, Write the Function --
--------------------------------------
-- You will be shown a type and a function that needs to be written. Use
-- the information the type provides to determine what the function
-- should do. We’ll also tell you how many ways there are to write the
-- function. Syntactically different but semantically equivalent imple-
-- mentations are not counted as being different.

-- Example:
-- myFunc :: (x -> y)
--           -> (y -> z)
--           -> c
--           -> (a, x)
--           -> (a, z)
-- 
-- myFunc xToY yToZ _ (a, x) = (a,yToZ (xToY x))

-------
-- 1 --
-------
-- There is only one function definition that type checks.
-- i :: a -> a
-- i = undefined

i :: a -> a
i x = x

-------
-- 2 --
-------
-- There is only one function definition that type checks.
-- c :: a -> b -> a
-- c = undefined

c''' :: a -> b -> a
c''' x y = x

-------
-- 3 --
-------
-- Given alpha equivalence, are the variables c'' and c (from the
-- previous exercise) the same thing?
-- c'' :: b -> a -> b
-- c'' = ?

-- Yes

c'''' :: a -> b -> a
c'''' x y = x

-------
-- 4 --
-------
-- There is only one function definition that type checks.
-- c' :: a -> b -> b
-- c' = undefined

c''''' :: a -> b -> b
c''''' x y = y

-------
-- 5 --
-------
-- There are multiple function definitions that type check.
-- r :: [a] -> [a]
-- r = undefined

r :: [a] -> [a]
r xs = xs

-------
-- 6 --
-------
-- There is only one function definition that type checks.
-- co :: (b -> c) -> (a -> b) -> a -> c
-- co = undefined

co :: (b -> c) -> (a -> b) -> a -> c
co bToC aToB a = bToC $ aToB a

-------
-- 7 --
-------
-- There is only one function definition that type checks.
-- a :: (a -> c) -> a -> a
-- a = undefined

a'' :: (a -> c) -> a -> a
a'' aToC a = a

-------
-- 8 --
-------
-- There is only one function definition that type checks.
-- a' :: (a -> b) -> a -> b
-- a' = undefined

a''' :: (a -> b) -> a -> b
a''' aToB = aToB

------------
-- Fix it --
------------

-------
-- 1 --
-------
-- fstString :: [Char] ++ [Char]
-- fstString x = x ++ " in the rain"

-- sndString :: [Char] -> Char
-- sndString x = x ++ " over the rainbow"

-- sing = if (x > y)
--          then fstString x
--          or   sndString y
--               where x = "Singin"
--                     x = "Somewhere"

fstString :: String -> String
fstString xs = xs ++ " in the rain"

sndString :: String -> String 
sndString ys = ys ++ " over the rainbow"

sing = if 2 > 1
         then fstString xs
         else sndString ys
              where xs = "Singin"
                    ys = "Somewhere"

-------
-- 2 --
-------
-- Now that it’s fixed, make a minor change so that it sings the
-- other song.

fstString' :: String -> String
fstString' xs = xs ++ " in the rain"

sndString' :: String -> String 
sndString' ys = ys ++ " over the rainbow"

sing' = fstString' xs ++ sndString' ys
        where xs = "Singin"
              ys = " Somewhere"

-------
-- 3 --
-------
-- main :: IO ()
-- Main = do
-- print 1 + 2
-- putStrLn 10
-- print (negate -1)
-- print ((+) 0 blah)
-- where blah = negate 1

-- main :: IO ()
-- main = do
--  print 1 + 2
--  putStrLn 10
--  print (negate 1)
--  print ((+) 0 blah)
--        where blah = negate 1

------------------
-- Type-Kwon-Do --
------------------
-- Here’s an example of how we present these exercises and how you
-- are expected to solve them:

-- data Woot
-- data Blah

-- f :: Woot -> Blah
-- f = undefined

-- g :: (Blah, Woot) -> (Blah, Blah)
-- g = undefined

-- Above, it’s the function g that you’re supposed to implement.
-- You’re only allowed to use type checking and type inference to validate your answers.
-- Example of a valid solution:

-- g :: (Blah, Woot) -> (Blah, Blah)
-- g (b, w) = (b, f w)

-------
-- 1 --
-------
-- f' :: Int -> String
-- f' = undefined
-- 
-- g' :: String -> Char
-- g' = undefined
-- 
-- h :: Int -> Char
-- h = ???

f' :: Int -> String
f' = undefined

g' :: String -> Char
g' = undefined

h :: Int -> Char
h x = g' $ f' x

-------
-- 2 --
-------
-- data A
-- data B
-- data C

-- q :: A -> B
-- q = undefined

-- w :: B -> C
-- w = undefined

-- e :: A -> C
-- e = ???

data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e a = w $ q a

-------
-- 3 --
-------
-- data X
-- data Y
-- data Z

-- xz :: X -> Z
-- xz = undefined

-- yz :: Y -> Z
-- yz = undefined

-- xform :: (X, Y) -> (Z, Z)
-- xform = ???

data X
data Y
data Z

xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform (x,y) = (xz x, yz y)

-------
-- 4 --
-------
-- munge :: (x -> y) -> (y -> (w, z)) -> x -> w
-- munge = ???

munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge xToY yToWandZ x =  fst $ yToWandZ $ xToY x
