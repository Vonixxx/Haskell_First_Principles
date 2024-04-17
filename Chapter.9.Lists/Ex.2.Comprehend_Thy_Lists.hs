--------------------------
-- Comprehend Thy Lists --
----------------------------------------------
-- Determine what the output lists will be. --
----------------------------------------------
-- mySqr = [x ^ 2 | x <- [1..10]] --
---------------------------------------------------------------
-- a) [x | x <- mySqr, rem x 2 == 0]                         --
-- b) [(x, y) | x <- mySqr,y <- mySqr,x < 50, y > 50]        --
-- c) take 5 [(x, y) | x <- mySqr,y <- mySqr,x < 50, y > 50] --
---------------------------------------------------------------


-- a) All even numbers from a pool
--    ranging from 1 to 10 that are squared.

-- b) Tuple pairs of all squared numbers which
--    result in less than 50 for x and more than 50 for y.

-- c) The same as above except that
--    only the first 5 pairs are taken.
