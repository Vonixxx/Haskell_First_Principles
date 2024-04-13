------------------
-- Eq Instances --
--------------------------------------------------------
-- Write the Eq instances for the datatypes provided. --
--------------------------------------------------------

-------
-- 1 --
-----------------------------------
-- data OneInteger = One Integer --
-----------------------------------

newtype OneInteger = One Integer

instance Eq OneInteger where
 One a == One a' = a == a'

-------
-- 2 --
--------------------------------------------
-- data TwoIntegers = Two Integer Integer --
--------------------------------------------

data TwoIntegers = Two Integer Integer

instance Eq TwoIntegers where
 Two a b == Two a' b' = a == a' && b == b'

-------
-- 3 --
----------------------------------------------------
-- data StringOrInt = AnInt Int | AnString String --
----------------------------------------------------

data StringOrInt = AnInt Integer | AnString String

instance Eq StringOrInt where
 AnInt    a == AnInt    a' = a == a'
 AnString a == AnString a' = a == a'
 _          == _           = False

-------
-- 4 --
----------------------------
-- data Pair a = Pair a a --
----------------------------

data Pair a = Pair a a

instance Eq a => Eq (Pair a) where
 Pair a b == Pair a' b' = a == a' && b == b'

-------
-- 5 --
--------------------------------
-- data Tuple a b = Tuple a b --
--------------------------------

data Tuple a b = Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
 Tuple a b == Tuple a' b' = a == a' && b == b'

-------
-- 6 --
------------------------------------------
-- data Which a = ThisOne a | ThatOne a --
------------------------------------------

data Which a = ThisOne a | ThatOne a

instance Eq a => Eq (Which a) where
 ThisOne a == ThisOne a' = a == a'
 ThatOne a == ThatOne a' = a == a'

-------
-- 7 --
---------------------------------------------
-- data EitherOr a b = Hello a | Goodbye b --
---------------------------------------------

data EitherOr a b = Hello a | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
 Hello   a == Hello   a' = a == a'
 Goodbye b == Goodbye b' = b == b'
