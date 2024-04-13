-----------------------
-- Chapter Exercises --
-----------------------

---------------------
-- Multiple Choice --
---------------------

-------
-- 1 --
--------
-- Eq --
---------------------------------------
-- a) Only includes numeric types.   --
-- b) Is the same as the Ord class.  --
-- c) Includes all types in Haskell. --
-- d) Makes equality tests possible. --
---------------------------------------

-- d

-------
-- 2 --
---------
-- Ord --
----------------------------------------------
-- a) Is a subclass of Eq.                  --
-- b) Is a superclass of Eq.                --
-- c) Has no instance for Bool.             --
-- d) Allows any two values to be compared. --
----------------------------------------------

-- a

-------
-- 3 --
---------
-- (>) --
--------------------------------
-- a) Ord a => a -> Char      --
-- b) Ord a => Int -> Bool    --
-- c) Ord a => a -> a -> Bool --
-- d) Ord a => Char -> [Char] --
--------------------------------

-- c

-------
-- 4 --
----------------------
-- x = divMod 16 12 --
---------------------------------------
-- a) x is equal to 12 / 16.         --
-- b) The type of x is Integer.      --
-- c) The type of x is a tuple.      --
-- d) The value of x is undecidable. --
---------------------------------------

-- c

-------
-- 5 --
------------------------
-- Integral includes? --
------------------------------------------------
-- a) Schrodinger’s cat.                      --
-- b) Only positive numbers.                  --
-- c) Int and Integer numbers.                --
-- d) Integral, real, and fractional numbers. --
------------------------------------------------

-- c

-------------------------
-- Does it Type Check? --
--------------------------------------------
-- x :: Int -> Int                        --
-- x blah = blah + 20                     --
--                                        --
-- printIt :: IO ()                       --
-- printIt = putStrLn (show x)            --
--                                        --
-- λ> printIt                             --
-- λ> No instance for (Show (Int -> Int)) --
--    arising from a use of ‘show’        --
--------------------------------------------

-------
-- 1 --
-------------------------------------------------
-- data Person = Person Bool                   --
--                                             --
-- printPerson :: Person -> IO ()              --
-- printPerson person = putStrLn (show person) --
-------------------------------------------------

newtype Person = Person Bool
 deriving Show

printPerson :: Person -> IO()
printPerson = print

-------
-- 2 --
---------------------------------
-- data Mood = Blah | Woot     --
--  deriving Show              --
--                             --
-- settleDown x = if x == Woot --
--                  then Blah  --
--                  else x     --
---------------------------------

data Mood = Blah | Woot
 deriving ( Eq
          , Show )

settleDown :: Mood -> Mood
settleDown x = if x == Woot
                 then Blah
                 else x

-------
-- 3 --
----------------------------------------------------------------
-- a) What values are acceptable inputs to settleDown?        --
-- b) What happens when doing Blah > Woot? Why is that?       --
-- c) What happens if the input is settleDown 9? Why is that? --
----------------------------------------------------------------

-- a) Either Blah or Woot.

-- b) No Instance for (Ord Mood), this is because
--    the deriving clause has no instance of Ord.

-- c) No Instance for (Num Mood), this is because
--    the deriving clause has no instance of Num.

-------
-- 4 --
--------------------------------------------------
-- type Verb    = String                        --
-- type Object  = String                        --
-- type Subject = String                        --
--                                              --
-- data Sentence = Sentence Subject Verb Object --
--  deriving (Eq, Show)                         --
                                                --
-- s1 = Sentence "dogs" "drool"                 --
-- s2 = Sentence "Julie" "loves" "dogs"         --
--------------------------------------------------

type Verb    = String
type Object  = String
type Subject = String

data Sentence = Sentence Subject Verb Object
 deriving ( Eq
          , Show )

s1 = Sentence "dogs" "drool" "lots"
s2 = Sentence "Julie" "loves" "dogs"

---------------------------
-- Datatype Declarations --
-----------------------------------------------
-- Which of the following will type check,   --
-- given the following datatype definitions. --
-----------------------------------------------

newtype Yeah = Yeah Bool
 deriving ( Eq
          , Show )

data Papu = Papu Rocks Yeah
 deriving ( Eq
          , Show )

newtype Rocks = Rocks String
 deriving ( Eq
          , Show )

-------
-- 1 --
------------------------------
-- one = Papu "chases" True --
------------------------------

one :: Papu
one = Papu (Rocks "chases") (Yeah True)

-------
-- 2 --
-------------------------------------------------
-- two = Papu (Rocks "chomskydoz") (Yeah True) --
-------------------------------------------------

-- Correct.

-------
-- 3 --
-----------------------------------
-- three :: Papu                 --
--       -> Papu                 --
--       -> Bool                 --
-- three p p' = p == p'          --
-----------------------------------

-- Correct.

-------
-- 4 --
------------------------
-- four :: Papu       --
--      -> Papu       --
--      -> Bool       --
-- four p p' = p > p' --
------------------------

-- Incorrect.
-- Reason: No Instance for (Ord Papu), this is because
--         the deriving clause has no instance of Ord.

---------------------
-- Match the Types --
-------------------------------------------------------
-- You're given two types and their implementations. --
-- Substitute the second for the first. Still valid? --
-------------------------------------------------------

-------
-- 1 --
--------------------------
-- a) one :: Num a => a --
-- b) one :: a          --
-- λ> one = 1           --
--------------------------

-- Incorrect.
-- Reason: λ> No Instance for (Num a)

-------
-- 2 --
--------------------------
-- a) two :: Float      --
-- b) two :: Num a => a --
-- λ> two = 1.0         --
--------------------------

-- Incorrect.
-- Reason: the initial type class constraint is Fractional => a
--         it cannot become a more lenient constraint like Num a => a.

-------
-- 3 --
-----------------------------------
-- a) three :: Float             --
-- b) three :: Fractional a => a --
-- λ> three = 1.0                --
-----------------------------------

-- Correct.
-- Reason: Float belongs to the Fractional a => a superclass.

-------
-- 4 --
--------------------------------
-- a) four :: Float           --
-- b) four :: RealFrac a => a --
-- λ> four = 1.0              --
--------------------------------

-- Correct.
-- Reason: Float belongs to the RealFrac a => a superclass.

-------
-- 5 --
--------------------------------
-- a) five :: a -> a          --
-- b) five :: Ord a => a -> a --
-- λ> five x = x              --
--------------------------------

-- Correct.
-- Reason: the type becomes more specific.

-------
-- 6 --
--------------------------
-- a) six :: a -> a     --
-- b) six :: Int -> Int --
-- λ> six x = x         --
--------------------------

-- Correct.
-- Reason: the type becomes more specific.

-------
-- 7 --
----------------------------
-- a) seven :: Int -> Int --
-- b) seven :: a -> a     --
-- λ> x = (1 :: Int)      --
-- λ> seven x = x         --
----------------------------

-- Incorrect.
-- Reason: by constraining the type of x, `seven` cannot be made more generic.

-------
-- 8 --
---------------------------------
-- a) eight :: Int -> Int      --
-- b) eight :: Num a => a -> a --
-- λ> x = (1 :: Int)           --
-- λ> eight x = x              --
---------------------------------

-- Incorrect.
-- Reason: by constraining the type of x, `eight` cannot be made more generic.

-------
-- 9 --
----------------------------------
-- a) nine :: Ord a => [a] -> a --
-- b) nine :: [Int] -> Int      --
-- λ> nine xs = head (sort xs)  --
----------------------------------

-- Correct.
-- Reason: Int has an instance of Ord.

--------
-- 10 --
---------------------------------
-- a) ten :: [Char] -> Char    --
-- b) ten :: Ord a => [a] -> a --
-- λ> ten xs = head (sort xs)  --
---------------------------------

-- Correct.
-- Reason: `sort` requires Ord a => [a], head requires [a].

--------
-- 11 --
-------------------------------------
-- a) eleven :: [Char] -> Char     --
-- b) eleven :: Ord a => [a] -> a  --
-- λ> mySort :: [Char] -> [Char]   --
-- λ> mySort = sort                --
-- λ> eleven xs = head (mySort xs) --
-------------------------------------

-- Correct.
-- Reason: the initial constraint is [Char], it cannot
--         become a more lenient constraint like Ord a => [a].

----------------------
-- Type-Kwon-Do Two --
----------------------

-------
-- 1 --
-----------------------------------------------
-- one' :: Eq b => (a -> b) -> a -> b -> Bool --
-- one' = ???                                 --
-----------------------------------------------

one' :: Eq b
     => (a -> b)
     -> a
     -> b
     -> Bool
one' aToB a b = aToB a == b

-------
-- 2 --
---------------------
-- two :: Num b    --
--     => (a -> b) --
--     -> Integer  --
--     -> a        --
--     -> b        --
-- two = ???       --
---------------------

two:: Num b => (a -> b) -> Integer -> a -> b
two aToB int = aToB
