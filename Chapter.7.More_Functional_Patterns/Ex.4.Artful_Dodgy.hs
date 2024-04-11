------------------
-- Artful Dodgy --
------------------
-- Given the following definitions, say what value results from further
-- applications.

dodgy :: Num a => a -> a -> a
dodgy x y = x + y * 10

oneIsOne :: Num a => a -> a
oneIsOne = dodgy 1

oneIsTwo :: Num a => a -> a
oneIsTwo = flip dodgy 2

-------
-- 1 --
-------
-- dodgy 1.0

-- dodgy :: Fractional a => a -> a
-- dodgy y = 1.0 + y * 10

-------
-- 2 --
-------
-- dodgy 1 1

-- dodgy = 11

-------
-- 3 --
-------
-- dodgy 2 2

-- dodgy = 22

-------
-- 4 --
-------
-- dodgy 1 2

-- dodgy = 21

-------
-- 5 --
-------
-- dodgy 2 1

-- dodgy = 12

-------
-- 6 --
-------
-- oneIsOne 1

-- oneIsOne = 11

-------
-- 7 --
-------
-- oneIsOne 2

-- oneIsOne = 21

-------
-- 8 --
-------
-- oneIsTwo 1

-- oneIsTwo = 21

-------
-- 9 --
-------
-- oneIsTwo 2

-- oneIsTwo = 22

--------
-- 10 --
--------
-- oneIsOne 3

-- oneIsOne = 31

--------
-- 11 --
--------
-- oneIsTwo 3

-- oneIsTwo = 32
