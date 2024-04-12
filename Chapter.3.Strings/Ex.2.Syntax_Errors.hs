-------------------
-- Syntax Errors --
---------------------------------
-- Will the following compile? --
---------------------------------

-------
-- 1 --
----------------------------
-- ++ [1, 2, 3] [4, 5, 6] --
----------------------------

-- No.
-- Reason: (++) is infix by default, to make it
-- prefix one needs to encase it in parentheses.

one :: Num a => [a]
one = (++) [1,2,3] [4,5,6]

-------
-- 2 --
------------------------
-- '<3' ++ ' Haskell' --
------------------------

-- No.
-- Reason: they are formatted as Char with ''
-- they ought to be formatted as String using "".
two :: String
two = "<3" ++ " Haskell"

-------
-- 3 --
-------------------------------
-- concat ["<3"," Haskell"] --
-------------------------------

-- Yes.
