-----------------------
-- Chapter Exercises --
-----------------------

---------------------
-- Multiple choice --
---------------------

-------
-- 1 --
-------
-- The Eq class
-- a) includes all types in Haskell.
-- b) is the same as the Ord class.
-- c) makes equality tests possible.
-- d) only includes numeric types.

-- c

-------
-- 2 --
-------
-- The type class Ord
-- a) allows any two values to be compared.
-- b) is a subclass of Eq.
-- c) is a superclass of Eq.
-- d) has no instance for Bool.

-- b

-------
-- 3 --
-------
-- Suppose the type class Ord has an operator >. What is the type
-- of >?
-- a) Ord a => a -> a -> Bool
-- b) Ord a => Int -> Bool
-- c) Ord a => a -> Char
-- d) Ord a => Char -> [Char]

-- a

-------
-- 4 --
-------
-- In x = divMod 16 12
-- a) the type of x is Integer.
-- b) the value of x is undecidable.
-- c) the type of x is a tuple.
-- d) x is equal to 12 / 16.

-- c

-------
-- 5 --
-------
-- The type class Integral includes
-- a) Int and Integer numbers.
-- b) integral, real, and fractional numbers.
-- c) Schrodinger’s cat.
-- d) only positive numbers.

-- a

-------------------------
-- Does it Type Check? --
-------------------------
-- Here you'll be practicing
-- looking for type and type class errors.
-- Example: printIt will not work,
-- because x has no instance of Show.

-- x :: Int -> Int
-- x blah = blah + 20

-- printIt :: IO ()
-- printIt = putStrLn (show x)

-- The type error:
-- • No instance for (Show (Int -> Int))
-- arising from a use of ‘show’

-------
-- 1 --
-------
-- data Person = Person Bool

-- printPerson :: Person -> IO ()
-- printPerson person = putStrLn (show person)

newtype Person = Person Bool
 deriving Show

printPerson :: Person -> IO()
printPerson person = putStrLn (show person)

-------
-- 2 --
-------
-- data Mood = Blah | Woot
--  deriving Show

-- settleDown x = if x == Woot
--                  then Blah
--                  else x

data Mood = Blah | Woot
 deriving (Eq,Show)

settleDown x = if x == Woot
                   then Blah
                   else x

-------
-- 3 --
-------
-- If SettleDown now type checks:
-- a) What values are acceptable inputs to that function?
-- b) What will happen if you try to run settleDown 9? Why?
-- c) What will happen if you try to run Blah > Woot? Why?

-- a) Either Blah or Woot

-- b) No Instance for (Num Mood), this is
-- because the deriving clause has no instance of Num

-- c) No Instance for (Ord Mood), this is
-- because the deriving clause has no instance of Ord

-------
-- 4 --
-------
-- type Subject = String
-- type Verb = String
-- type Object = String

-- data Sentence = Sentence Subject Verb Object
--  deriving (Eq, Show)

-- s1 = Sentence "dogs" "drool"
-- s2 = Sentence "Julie" "loves" "dogs"

type Verb    = String
type Object  = String
type Subject = String

data Sentence = Sentence Subject Verb Object
 deriving (Eq, Show)

s1 = Sentence "dogs" "drool" "lots"
s2 = Sentence "Julie" "loves" "dogs"

---------------------------
-- Datatype Declarations --
---------------------------
-- Which of the following will type check,
-- given the following datatype definitions:

newtype Yeah = Yeah Bool
 deriving (Eq, Show)

data Papu = Papu Rocks Yeah
 deriving (Eq, Show)

newtype Rocks = Rocks String
 deriving (Eq, Show)

-------
-- 1 --
-------
-- one = Papu "chases" True

-- Incorrect

one :: Papu
one = Papu (Rocks "chases") (Yeah True)

-------
-- 2 --
-------
-- two = Papu (Rocks "chomskydoz") (Yeah True)

-- Correct

-------
-- 3 --
-------
-- three :: Papu -> Papu -> Bool
-- three p p' = p == p'

-- Correct

-------
-- 4 --
-------
-- four :: Papu -> Papu -> Bool
-- four p p' = p > p'

-- Incorrect
-- Reason: No Instance for (Ord Papu), this is
-- because the deriving clause has no instance of Ord

---------------------
-- Match the Types --
---------------------
-- You'll be given two types and their implementations.
-- Substitute the second type for the first. Is it still valid?

-------
-- 1 --
-------
-- a) one :: Num a => a
-- b) one :: a
-- one = 1

-- Incorrect
-- b needs a Num instance

-------
-- 2 --
-------
-- a) two :: Float
-- b) two :: Num a => a
-- two = 1.0

-- Correct
-- Reason: Num is a superclass of Float

-------
-- 3 --
-------
-- a) three :: Float
-- b) three :: Fractional a => a
-- three = 1.0

-- Correct
-- Reason: Fractional is a superclass of Float

-------
-- 4 --
-------
-- a) four :: Float
-- b) four :: RealFrac a => a
-- four = 1.0

-- Correct
-- Reason: RealFrac is a superclass of Float

-------
-- 5 --
-------
-- a) five :: a -> a
-- b) five :: Ord a => a -> a
-- five x = x

-- Incorrect
-- Reason: b is no longer maximally polymorphic,
-- solely values constrained by the Ord type class are valid

-------
-- 6 --
-------
-- a) six :: a -> a
-- b) six :: Int -> Int
-- six x = x

-- Incorrect
-- Reason: b no longer maximally polymorphic,
-- solely values constrained by the Int type are valid

-------
-- 7 --
-------
-- a) seven :: Int -> Int
-- b) seven :: a -> a
-- oneInt = 1 :: Int
-- seven x = oneInt

-- Incorrect
-- b needs a Num instance

-------
-- 8 --
-------
-- a) oneInt = 1 :: Int
--    eight :: Int -> Int
-- b) eight :: Num a => a -> a
-- eight x = myX

-- Correct
-- Reason: Num is a superclass of Int

-------
-- 9 --
-------
-- a) nine :: Ord a => [a] -> a
-- b) nine :: [Int] -> Int
-- nine xs = head (sort xs)

-- Correct
-- Reason: Ord has an instance of Int

--------
-- 10 --
--------
-- a) ten :: [Char] -> Char
-- b) ten :: Ord a => [a] -> a
-- ten xs = head (sort xs)

-- Correct
-- Reason: Ord has an instance of Char

--------
-- 11 --
--------
-- a) eleven :: [Char] -> Char
-- b) eleven :: Ord a => [a] -> a
-- mySort :: [Char] -> [Char]
-- mySort = sort
-- eleven xs = head (mySort xs)

-- Correct
-- Reason: Ord has an instance of Char

----------------------
-- Type-Kwon-Do Two --
----------------------
-- Same rules as the previous segment of Type-Kwon-Do.

-------
-- 1 --
-------
-- one :: Eq b => (a -> b) -> a -> b -> Bool
-- one = ???

one' :: Eq b => (a -> b) -> a -> b -> Bool
one' aToB a b = aToB a == b

-------
-- 2 --
-------
-- two :: Num b => (a -> b) -> Integer -> a -> b
-- two = ???

two:: Num b => (a -> b) -> Integer -> a -> b
two aToB int = aToB
