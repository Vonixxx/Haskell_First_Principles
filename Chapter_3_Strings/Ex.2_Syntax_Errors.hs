-------------------
-- Syntax Errors --
-------------------
-- Decide whether the following will compile

-------
-- 1 --
-------
-- ++ [1, 2, 3] [4, 5, 6]

-- False
one :: [Integer]
one = (++) [1,2,3] [4,5,6]

-------
-- 2 --
-------
-- '<3' ++ ' Haskell'

-- False
two :: String
two = "<3" ++ " Haskell"

-------
-- 3 --
-------
-- concat ["<3", " Haskell"]

-- True
