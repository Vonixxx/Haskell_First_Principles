-----------------
-- Mood Swings --
-----------------

-- Given this datatype, answer the following questions:
data Mood = Blah | Woot deriving Show

-- 1.
-- What is the type constructor, or name of this type?

-- Mood

-- 2.
-- If the function requires a Mood value, what are the values you
-- could possibly use?

-- Either Blah or Woot

-- 3.
-- We are trying to write a function changeMood to change Chris’s
-- mood instantaneously. It should act like "not" in that, given
-- one value, it returns the other value of the same type. So far,
-- we’ve written a type signature changeMood :: Mood -> Woot. What’s
-- wrong with that?

changeMood :: Mood -> Mood
-- Reason: -> requires type constructors, not data constructors.


-- 4.
-- Now we want to write the function that changes his mood. Given
-- an input mood, it gives us the other one.

changeMood Woot = Blah
changeMood Blah = Woot
