-----------------------
-- Chapter Exercises --
-----------------------

---------------------
-- Multiple Choice --
---------------------

-------
-- 1 --
---------
-- [a] --
-----------------------------------------------------------
-- a) a list of lists                                    --
-- b) a list of alphabetic characters                    --
-- c) a list of elements that are all of some type a     --
-- d) a list of elements that are all of different types --
-----------------------------------------------------------

-- c

-------
-- 2 --
------------------
-- [[a]] -> [a] --
--------------------------------------------------
-- a) take two arguments                        --
-- b) transform a character into a string       --
-- c) take a list of strings as an argument     --
-- d) transform a string into a list of strings --
--------------------------------------------------

-- c

-------
-- 3 --
---------------------
-- [a] -> Int -> a --
--------------------------------------------------
-- a) takes one argument                        --
-- b) is completely fictional                   --
-- c) must return an Int value                  --
-- d) returns one element of type a from a list --
--------------------------------------------------

-- d

-------
-- 4 --
-----------------
-- (a, b) -> a --
-----------------------------------------------------------
-- a) has zero arguments                                 --
-- b) requires that a and b have different types         --
-- c) takes a list argument and returns a Char value     --
-- d) takes a tuple argument and returns the first value --
-----------------------------------------------------------

-- d

------------------------
-- Determine the Type --
------------------------

-------
-- 1 --
-------------------------------------------------
-- Determine the values returned by these      --
-- applications and the types of those values. --
---------------------------------------------------
-- a) (* 9) 6                                    --
-- b) length [1, 2, 3, 4, 5]                     --
-- c) if False then True else False              --
-- d) head [(0,"doge"),(1,"kitteh")]             --
-- e) head [(0 :: Integer,"doge"),(1,"kitteh")]  --
-- f) (length [1, 2, 3, 4]) > (length "TACOCAT") --
---------------------------------------------------

-- a) λ> 54
--    oneA :: Num a => a

-- b) λ> 5
--    oneB :: Int

-- c) λ> False
--    oneC :: Bool

-- d) λ> (0,"doge")
--    oneD :: Num a => (a,String)

-- e) λ> (0,"doge")
--    oneE :: (Integer,String)

-- f) λ> False
--    oneF :: Bool

-------
-- 2 --
----------------------------
-- What is the type of w? --
----------------------------
-- x = 5      --
-- y = x + 5  --
-- w = y * 10 --
----------------

-- two :: Num a => a

-------
-- 3 --
----------------------------
-- What is the type of z? --
----------------------------
-- x = 5        --
-- y = x + 5    --
-- z y = y * 10 --
------------------

-- Num a => a -> a

-------
-- 4 --
----------------------------
-- What is the type of z? --
----------------------------
-- x = 5     --
-- y = x + 5 --
-- z = 4 / y --
---------------

-- Fractional a => a

-------
-- 5 --
----------------------------
-- What is the type of f? --
----------------------------
-- x = "Julie"     --
-- y = " <3 "      --
-- z = "Haskell"   --
-- f = x ++ y ++ z --
---------------------

-- String

----------------------
-- Does it Compile? --
----------------------------------------------
-- Figure out which expression causes the   --
-- compiler to fail and why, then fix them. --
----------------------------------------------

-------
-- 1 --
--------------------------
-- bigNum = (^) 5 $ 10  --
-- wahoo  = bigNum $ 10 --
--------------------------

-- Incorrect.
-- Reason: bigNum awaits no
--         argument, yet one is given.

bigNum = 5 ^ 10
wahoo  = bigNum

-------
-- 2 --
-------------------------
-- x = print           --
-- y = print "woohoo!" --
-- z = x "hello world" --
-------------------------

-- Correct.

-------
-- 3 --
---------------
-- a = (+)   --
-- b = 5     --
-- c = b 10  --
-- d = c 200 --
---------------

-- Incorrect.
-- Reason: c and d have no operator.

a = (+)
b = 5
c = a b 10
d = a c 200

-------
-- 4 --
---------------------
-- a' = 12 + b'    --
-- b' = 10000 * c' --
---------------------

-- Incorrect.
-- Reason: c' is undefined.

c' = 3
a' = 12 + b'
b' = 10000 * c'

----------------------------------------
-- Type Variable or Type Constructor? --
-----------------------------------------------
-- Choices: fully polymorphic, constrained   --
-- polymorphic or concrete type constructor. --
-----------------------------------------------
-- f :: Num a => a -> b -> Int -> Int --
--              [1]  [2]  [3]    [4]  --
-- (1)       constrained polymorphic  --
-- (2)       fully polymorphic        --
-- (3 and 4) concrete                 --
----------------------------------------

-------
-- 1 --
-----------------------------
-- f :: zed -> Zed -> Blah --
--     [1]    [2]    [3]   --
-----------------------------

-- (1)       fully polymorphic
-- (2 and 3) concrete

-------
-- 2 --
---------------------------------
-- f :: Enum b => a -> b -> C  --
--               [1]  [2]  [3] --
---------------------------------

-- (1) fully polymorphic
-- (2) constrained polymorphic
-- (3) concrete

-------
-- 3 --
-----------------------
-- f :: f -> g -> C  --
--     [1]  [2]  [3] --
-----------------------

-- (1 and 2) fully polymorphic
-- (3)       concrete

----------------------------
-- Write a Type Signature --
----------------------------

-------
-- 1 --
-------------------
-- one ::        --
-- one (x:_) = x --
-------------------

one :: [a] -> a
one (x:_) = x

-------
-- 2 --
----------------------------
-- two ::                 --
-- two x y = if (x > y)   --
--             then True  --
--             else False --
----------------------------

two :: (Ord a) => a -> a -> Bool
two x y = if x > y
            then True
            else False

-------
-- 3 --
---------------------
-- three ::        --
-- three (x,y) = y --
---------------------

three :: (a,b) -> b
three (x,y) = y

--------------------------------------
-- Given a Type, Write the Function --
---------------------------------------------------
-- myFunc :: (x -> y)                            --
--        -> (y -> z)                            --
--        -> c                                   --
--        -> (a, x)                              --
--        -> (a, z)                              --
-- myFunc xToY yToZ _ (a, x) = (a,yToZ (xToY x)) --
---------------------------------------------------

-------
-- 1 --
---------------------
-- one :: a -> a   --
-- one = undefined --
---------------------

one' :: a -> a
one' x = x

-------
-- 2 --
------------------------
-- two :: a -> b -> a --
-- two = undefined    --
------------------------

two' :: a -> b -> a
two' x y = x

-------
-- 3 --
-----------------------------------------
-- Given alpha equivalence, is the     --
-- following equivalent to the latter? --
-- three' :: b -> a -> b               --
-- three' = undefined                  --
-----------------------------------------

-- Yes.
-- Reason: the names in the type definition
--         hold no meaning, they can have arbitrary names.

-------
-- 4 --
-------------------------
-- four :: a -> b -> b --
-- four = undefined    --
-------------------------

four :: a -> b -> b
four x y = y

-------
-- 5 --
------------------------
-- five :: [a] -> [a] --
-- five = undefined   --
------------------------

five :: [a] -> [a]
five xs = xs

-------
-- 6 --
-------------------------------------------
-- six :: (b -> c) -> (a -> b) -> a -> c --
-- six = undefined                       --
-------------------------------------------

six :: (b -> c) -> (a -> b) -> a -> c
six bToC aToB a = bToC $ aToB a

-------
-- 7 --
---------------------------------
-- seven :: (a -> c) -> a -> a --
-- seven = undefined           --
---------------------------------

seven :: (a -> c) -> a -> a
seven aToC a = a

-------
-- 8 --
---------------------------------
-- eight :: (a -> b) -> a -> b --
-- eight = undefined           --
---------------------------------

eight :: (a -> b) -> a -> b
eight aToB = aToB

--------------
-- Fix Them --
--------------

-------
-- 1 --
--------------------------------------------
-- fstString :: [Char] ++ [Char]          --
-- fstString x = x ++ " in the rain"      --
                                          --
-- sndString :: [Char] -> Char            --
-- sndString x = x ++ " over the rainbow" --
                                          --
-- sing = if (x > y)                      --
--          then fstString x              --
--          or   sndString y              --
--               where x = "Singin"       --
--                     x = "Somewhere"    --
--------------------------------------------

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
------------------------------
-- Make it sing both songs. --
------------------------------

fstString' :: String -> String
fstString' xs = xs ++ " in the rain"

sndString' :: String -> String 
sndString' ys = ys ++ " over the rainbow"

sing' = fstString' xs ++ sndString' ys
        where xs = "Singin"
              ys = " Somewhere"

-------
-- 3 --
----------------------------------
-- main :: IO ()                --
-- Main = do                    --
--  print 1 + 2                 --
--  putStrLn 10                 --
--  print (negate -1)           --
--  print ((+) 0 blah)          --
--        where blah = negate 1 --
----------------------------------

main :: IO ()
main = do
 print $ 1 + 2
 putStrLn "10"
 print $ negate (-1)
 print ((+) 0 blah)
       where blah = negate 1

------------------
-- Type-Kwon-Do --
---------------------------------------
-- data Woot                         --
-- data Blah                         --
                                     --
-- f :: Woot -> Blah                 --
-- f = undefined                     --
                                     --
-- g :: (Blah, Woot) -> (Blah, Blah) --
-- g = ???                           --
                                     --
-- g :: (Blah, Woot) -> (Blah, Blah) --
-- g (b, w) = (b, f w)               --
---------------------------------------

-------
-- 1 --
--------------------------
-- f' :: Int -> String  --
-- f' = undefined       --
--                      --
-- g' :: String -> Char --
-- g' = undefined       --
--                      --
-- h :: Int -> Char     --
-- h = ???              --
--------------------------

f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

h :: Int -> Char
h x = g $ f x

-------
-- 2 --
-------------------
-- data A        --
-- data B        --
-- data C        --
                 --
-- q :: A -> B   --
-- q = undefined --
                 --
-- w :: B -> C   --
-- w = undefined --
                 --
-- e :: A -> C   --
-- e = ???       --
-------------------

data A
data B
data C

q :: A
  -> B
q = undefined

w :: B
  -> C
w = undefined

e :: A
  -> C
e a = w $ q a

-------
-- 3 --
-------------------------------
-- data X                    --
-- data Y                    --
-- data Z                    --
                             --
-- xz :: X -> Z              --
-- xz = undefined            --
                             --
-- yz :: Y -> Z              --
-- yz = undefined            --
                             --
-- xform :: (X, Y) -> (Z, Z) --
-- xform = ???               --
-------------------------------

data X
data Y
data Z

xz :: X
   -> Z
xz = undefined

yz :: Y
   -> Z
yz = undefined

xform :: (X, Y)
      -> (Z, Z)
xform (x,y) = (xz x, yz y)

-------
-- 4 --
----------------------------
-- munge :: (x -> y)      --
--       -> (y -> (w, z)) --
--       -> x             --
--       -> w             --
-- munge = ???            --
----------------------------

munge :: (x -> y)
      -> (y -> (w, z))
      -> x
      -> w
munge xToY yToWandZ x = fst $ yToWandZ $ xToY x
