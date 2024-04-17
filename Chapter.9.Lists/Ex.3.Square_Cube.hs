-----------------
-- Square Cube --
----------------------------------
-- mySqr  = [x^2 | x <- [1..5]] --
-- myCube = [y^3 | y <- [1..5]] --
----------------------------------

mySqr :: [Integer]
mySqr  = [x^2 | x <- [1..5]]

myCube :: [Integer]
myCube = [y^3 | y <- [1..5]]

-------
-- 1 --
------------------------------------------------
-- Write an expression that will make         --
-- tuples of the outputs of mySqr and myCube. --
------------------------------------------------

one :: [(Integer,Integer)]
one = [(x,y) | x <- mySqr,y <- myCube]

-------
-- 2 --
----------------------------------------------------
-- Alter that expression such that it only        --
-- uses the x and y values that are less than 50. --
----------------------------------------------------

two :: [(Integer,Integer)]
two = [(x,y) | x <- mySqr,y <- myCube,x < 50 && y < 50]

-------
-- 3 --
----------------------------------------------
-- Apply another function to that list      --
-- to determine how many tuples inhabit it. --
----------------------------------------------

three :: [(Integer,Integer)] -> Int
three xs = length two
