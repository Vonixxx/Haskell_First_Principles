-----------------
-- Mood Swings --
-----------------
-- Given this datatype, answer the following questions
data Mood = Blah | Woot deriving Show

-------
-- 1 --
-------
-- What is the type constructor

-- Mood

-------
-- 2 --
-------
-- If the function requires a value
-- what are possible values as input

-- Either Blah or Woot

-------
-- 3 --
-------
-- Write a function changeMood to change Chris’s
-- mood instantaneously. It should behave this way:
-- given one value, it returns the other value of the same type
-- So far, we’ve written a type signature changeMood :: Mood -> Woot. Fix it.

changeMood :: Mood -> Mood

-------
-- 4 --
-------
-- Write a function that changes his mood.
-- Given an input mood, it gives us the other one.

changeMood Woot = Blah
changeMood Blah = Woot
