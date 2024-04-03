-----------------------
-- Chapter Exercises --
-----------------------

--------------------
-- Reading Syntax --
--------------------

-- 1.
-- For the following lines of code, read the syntax carefully, and
-- decide whether they are written correctly.

-- a) concat [[1, 2, 3], [4, 5, 6]]

-- True

-- b) ++ [1, 2, 3] [4, 5, 6]

b :: [Integer]
b = (++) [1,2,3] [4,5,6]

-- c) (++) "hello" " world"

-- True

-- d) ["hello" ++ " world]

-- True

-- e) 4 !! "hello"

e :: Char
e = "hello" !! 4

-- f) (!!) "hello" 4

-- True

-- g) take "4 lovely"

g :: String
g = take 4 "lovely"

-- h) take 3 "awesome"

-- True

-- 2.
-- Next, we have two sets. The first set is lines of code, and the
-- other is a set of results. Read the code, and figure out which
-- results come from which lines of code.

-- a) concat [[1 * 6], [2 * 6], [3 * 6]]
-- b) "rain" ++ drop 2 "elbow"
-- c) 10 * head [1, 2, 3]
-- d) (take 3 "Julie") ++ (tail "yes")
-- e) concat [ tail [1, 2, 3]
--           , tail [4, 5, 6]
--           , tail [7, 8, 9] ]

-- Now, match each of the previous expressions to one of these
-- results, which are presented in a scrambled order:

-- a) "Jules"
-- b) [2,3,5,6,8,9]
-- c) "rainbow"
-- d) [6,12,18]
-- e) 10

-- Answer: a -> d
--         b -> c
--         c -> e
--         d -> a
--         e -> b

------------------------
-- Building functions --
------------------------

-- 1.
-- Given the list-manipulation functions mentioned in this chap-
-- ter, write functions that take the given inputs and return the
-- expected outputs.

-- a) Given: "Curry is awesome"
--    Return:"Curry is awesome!"

a :: String
a = "Curry is awesome" ++ "!"

-- b) Given:  "Curry is awesome!"
--    Return: "y"

bTwo :: Char
bTwo = "Curry is awesome!" !! 5

-- c) Given:  "Curry is awesome!"
--    Return: "awesome!"

c :: String
c = drop 9 "Curry is awesome!"

-- 2.
-- Take each of the above, and rewrite it in a source file as a general
-- function that could take different string inputs as arguments
-- but retain the same behavior. Use a variable as an argument to
-- each of your (named) functions.

aTwo :: String -> String
aTwo xs = xs ++ "!"

bThree :: String -> Char
bThree xs = xs !! 5

cTwo :: String -> String
cTwo = drop 9

-- 3.
-- Write a function of type String -> Char that returns the third
-- character in a String.

three :: String -> Char
three xs = xs !! 3

-- 4.
-- Change the above function so that the string operated on is
-- always the same and the variable represents the number of the
-- letter you want to return.

four :: Int -> Char
four x = "Haskell is Amazing!" !! x

-- 5.
-- Write a function that takes the string "Curry is awesome"
-- and returns the result "awesome is Curry".
-- You’re expected to slice and dice this particular string with take and drop.

five :: String
five = drop 9 xs ++ " is " ++ take 5 xs
       where xs = "Curry is awesome"

-- 6.
-- Let’s see if we can expand that function into a module.
-- Into the parentheses after print, you’ll need to fill in your func-
-- tion name.

-- module Reverse where

-- five :: String
-- five = drop 9 xs ++ " is " ++ take 5 xs
--        where xs = "Curry is awesome"

-- main :: IO ()
-- main = print (five)
