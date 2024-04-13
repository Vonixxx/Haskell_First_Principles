------------------
-- Artful Dodgy --
---------------------------------------------
-- Given the following, say                --
-- what results from further applications. --
---------------------------------------------

oneIsOne :: Num a => a -> a
oneIsOne = dodgy 1

oneIsTwo :: Num a => a -> a
oneIsTwo = flip dodgy 2

dodgy :: Num a => a -> a -> a
dodgy x y = x + y * 10

-------
-- 1 --
---------------
-- dodgy 1.0 --
---------------

-- dodgy :: Fractional a => a -> a
-- dodgy y = 1.0 + y * 10

-------
-- 2 --
---------------
-- dodgy 1 1 --
---------------

-- dodgy :: Num a => a
-- λ> dodgy 1 1
-- λ> 11

-------
-- 3 --
---------------
-- dodgy 2 2 --
---------------

-- dodgy :: Num a => a
-- λ> dodgy 2 2
-- λ> 22

-------
-- 4 --
---------------
-- dodgy 1 2 --
---------------

-- dodgy :: Num a => a
-- λ> dodgy 1 2
-- λ> 21

-------
-- 5 --
---------------
-- dodgy 2 1 --
---------------

-- dodgy :: Num a => a
-- λ> dodgy 2 1
-- λ> 12

-------
-- 6 --
----------------
-- oneIsOne 1 --
----------------

-- oneIsOne :: Num a => a
-- λ> oneIsOne 1
-- λ> 11

-------
-- 7 --
----------------
-- oneIsOne 2 --
----------------

-- oneIsOne :: Num a => a
-- λ> oneIsOne 2
-- λ> 21

-------
-- 8 --
----------------
-- oneIsTwo 1 --
----------------

-- oneIsTwo :: Num a => a
-- λ> oneIsTwo 1
-- λ> 21

-------
-- 9 --
----------------
-- oneIsTwo 2 --
----------------

-- oneIsTwo :: Num a => a
-- λ> oneIsTwo 2
-- λ> 22

--------
-- 10 --
----------------
-- oneIsOne 3 --
----------------

-- oneIsOne :: Num a => a
-- λ> oneIsOne 3
-- λ> 31

--------
-- 11 --
----------------
-- oneIsTwo 3 --
----------------

-- oneIsTwo :: Num a => a
-- λ> oneIsTwo 3
-- λ> 32
