-------------------
-- Syntax Errors --
-------------------

-- Read the syntax of the following functions, and decide whether it
-- will compile.

-- 1.
-- ++ [1, 2, 3] [4, 5, 6]

one :: [Integer]
one = (++) [1,2,3] [4,5,6]

-- 2.
-- '<3' ++ ' Haskell'

two :: String
two = "<3" ++ " Haskell"

-- 3.
-- concat ["<3", " Haskell"]

-- True
