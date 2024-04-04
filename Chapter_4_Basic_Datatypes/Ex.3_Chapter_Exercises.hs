-----------------------
-- Chapter Exercises --
-----------------------

-- You will need to have the awesome, also, and
-- allAwesome code in scope for this session.

allAwesome = [awesome, also]
also       = ["Quake", "The Simons"]
awesome    = ["Papuchon", "curry", ":)"]

-- 1.
-- Length is a function that takes a list and returns the number of
-- items in that list. Given the definition of length above:

-- what would its type signature be?

lengthCustom :: [a] -> Int
lengthCustom = length

-- How many arguments does it take and of what types?

-- One, of type list.

-- What is the type of the result it evaluates to?

-- It evaluates to an Int.

-- 2.
-- What are the results of the following expressions?

-- a) length [1, 2, 3, 4, 5]

-- 5

-- b) length [(1, 2), (2, 3), (3, 4)]

-- 3

-- c) length allAwesome

-- 2

-- d) length (concat allAwesome)

-- 5

-- 3.
-- Given what we know about numeric types and the type signature
-- of length, look at the two expressions below. One works, and
-- one returns an error. Determine which will return an error and
-- why.
-- 6 / 3 and 6 / length [1, 2, 3]

-- 1st works.
-- Reason: they are not yet concrete types.

-- 2nd doesn't work.
-- Reason: length gives Int as a result.
-- There is no 'Fractional' instance for Int, when it is in fact required:
-- (/) :: Fractional a => a -> a -> a

-- 4.
-- How can you fix the broken code from the preceding exercise
-- using a different division function/operator?

four :: Int
four = 6 `div` 3

-- 5.
-- What is the type of the expression 2 + 3 == 5?

five :: Bool
five = 2 + 3 == 5

-- 6.
-- What is the type and expected result value of the following:

-- a) x = 5

a :: Int
a = 5

-- b) x + 3 == 5

b :: Integer -> Bool
b x = x + 3 == 5

-- 7.
-- Below are some bits of code. Which will work, and why?
-- If they will work, what values would these reduce to?

-- a) length allAwesome == 2

-- Works
-- Result: True

-- b) length [1, 'a', 3, 'b']

-- Doesn't Work
-- Reason: [] :: [a], meaning the list can only contain elements of type a
-- i.e. the elements have to be of the same type as the first one from the list

-- c) length allAwesome + length awesome

-- Works
-- Result: 2 + 3 = 5

-- d) (8 == 8) && ('b' < 'a')

-- Works
-- Result: True && False = False

-- e) (8 == 8) && 9

-- Works
-- Result: True && False = False

-- 8.
-- Write a function that tells you whether or not a given String (or
-- list) is a palindrome. Here, you’ll want to use a function called reverse:
-- reverse :: [a] -> [a]

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == reverse xs

-- 9.
-- Write a function to return the absolute value of a number using
-- an if-then-else expression.

absolute :: Integer -> Integer
absolute x = if x == (-x)
               then (-(-x))
               else x

-- 10.
-- Fill in the definition of the following function, using fst and snd.

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f tupleOne tupleTwo = ((snd tupleOne, snd tupleTwo), (fst tupleOne, fst tupleTwo)) 

-----------------------
-- Correcting syntax --
-----------------------

-- In the following examples, you’ll be shown syntactically incorrect
-- code. Correct it.

-- 1.
-- Here, we want a function that adds 1 to the length of a string
-- argument and returns that result:
-- x = (+)
-- F xs = w 'x' 1
-- where w = length xs

x = (+)

one :: [a] -> Int
one xs = l `x` 1
       where l = length xs

-- 2. This is supposed to be the identity function, id:
-- \X = x

two :: a -> a
two x = x

-- 3. When fixed, this function will return 1 from the value (1, 2):
-- f (a b) = A

three :: (a,b) -> a
three (a,b) = a

---------------------------------------------
-- Match the function names to their types --
---------------------------------------------

-- 1.
-- Which of the following types is the type of show?
-- a) show a => a -> String
-- b) Show a -> a -> String
-- c) Show a => a -> String

-- c

-- 2.
-- Which of the following types is the type of ==?
-- a) a -> a -> Bool
-- b) Eq a => a -> a -> Bool
-- c) Eq a -> a -> a -> Bool
-- d) Eq a => A -> Bool

-- b

-- 3.
-- Which of the following types is the type of fst?
-- a) (a, b) -> a
-- b) b -> a
-- c) (a, b) -> b

-- c

-- 4. Which of the following types is the type of +?
-- a) Num a -> a -> a -> Bool
-- b) Num a => a -> a -> Bool
-- c) num a => a -> a -> a
-- d) Num a => a -> a -> a
-- e) a -> a -> a

-- d
