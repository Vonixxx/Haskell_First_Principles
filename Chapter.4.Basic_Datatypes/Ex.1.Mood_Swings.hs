-----------------
-- Mood Swings --
----------------------------------------------------------
-- Given this datatype, answer the following questions. --
----------------------------------------------------------

data Mood = Blah | Woot deriving Show

-------
-- 1 --
-----------------------------------
-- What is the type constructor? --
-----------------------------------

-- Mood

-------
-- 2 --
----------------------------------------
-- What are possible values as input? --
----------------------------------------

-- Blah | Woot

-------
-- 3 --
--------------------------------------------------------------------------------
-- Write a function changeMood.                                               --
-- Given one value, it returns the other value of the same type.              --
-- So far, we’ve written a type signature changeMood :: Mood -> Woot. Fix it. --
--------------------------------------------------------------------------------

changeMood :: (Eq Mood) => Mood -> Mood

changeMood mood
           | mood == Woot = Blah
           | mood == Blah = Woot
