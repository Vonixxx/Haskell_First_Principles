-----------------------
-- Chapter Exercises --
-----------------------

--------------------
-- Reading Syntax --
--------------------

-------
-- 1 --
-------
-- Are the following written correctly?

-- a) concat [[1, 2, 3], [4, 5, 6]]

-- Yes

-- b) ++ [1, 2, 3] [4, 5, 6]

-- No
b :: [Integer]
b = (++) [1,2,3] [4,5,6]

-- c) (++) "hello" " world"

-- Yes

-- d) ["hello" ++ " world]

-- Yes

-- e) 4 !! "hello"

-- No
e :: Char
e = "hello" !! 4

-- f) (!!) "hello" 4

-- Yes

-- g) take "4 lovely"

-- No
g :: String
g = take 4 "lovely"

-- h) take 3 "awesome"

-- True

-------
-- 2 --
-------
-- Read the code, and figure out which
-- results come from which lines of code.

-- a) concat [[1 * 6], [2 * 6], [3 * 6]]
-- b) "rain" ++ drop 2 "elbow"
-- c) 10 * head [1, 2, 3]
-- d) (take 3 "Julie") ++ (tail "yes")
-- e) concat [ tail [1, 2, 3]
--           , tail [4, 5, 6]
--           , tail [7, 8, 9] ]

-- a) "Jules"
-- b) [2,3,5,6,8,9]
-- c) "rainbow"
-- d) [6,12,18]
-- e) 10

-- a -> d
-- b -> c
-- c -> e
-- d -> a
-- e -> b

------------------------
-- Building functions --
------------------------

-------
-- 1 --
-------
-- Write functions that take the given
-- inputs and return the expected outputs.

-- a) Given: "Curry is awesome"
--    Return:"Curry is awesome!"

a :: String
a = "Curry is awesome" ++ "!"

-- b) Given:  "Curry is awesome!"
--    Return: "y"

b' :: Char
b' = "Curry is awesome!" !! 5

-- c) Given:  "Curry is awesome!"
--    Return: "awesome!"

c :: String
c = drop 9 "Curry is awesome!"

-------
-- 2 --
-------
-- Rewrite the above as general functions
-- that can take different inputs, yet retain the same behavior.

a' :: String -> String
a' xs = xs ++ "!"

b'' :: String -> Char
b'' xs = xs !! 5

c' :: String -> String
c' = drop 9

-------
-- 3 --
-------
-- Write a function of type String -> Char
-- that returns the third character of that String.

three :: String -> Char
three xs = xs !! 3

-------
-- 4 --
-------
-- Change the above function so that the string operated on is always
-- the same and the variable represents the n-th letter to be returned.

four :: Int -> Char
four x = "Haskell is Amazing!" !! x

-------
-- 5 --
-------
-- Write a function that takes the string "Curry is awesome"
-- and returns the result "awesome is Curry", using take and drop.

five :: String
five = drop 9 xs ++ " is " ++ take 5 xs
       where xs = "Curry is awesome"
