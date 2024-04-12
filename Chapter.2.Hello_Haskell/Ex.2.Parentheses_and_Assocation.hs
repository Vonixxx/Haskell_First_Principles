---------------------------------
-- Parentheses and Association --
--------------------------------------------------------
-- Decide whether the parentheses change the results. --
--------------------------------------------------------

-------
-- 1 --
--------------------
-- a) 8 + 7 * 9   --
-- b) (8 + 7) * 9 --
--------------------

-- a) λ> 71
-- b) λ> 135

-- Reason: (*) infixl 7
--         (+) infixl 6
-- Parentheses grant a higher precedence,
-- thus (*) no longer has the highest precedence.

-------
-- 2 --
--------------------------
-- a) 3 * 2 + 7 * 2     --
-- b) (3 * 2) + (7 * 2) --
--------------------------

-- a) λ> 20
-- b) λ> 20

-- Reason: Parentheses grant a higher precedence,
-- however the order of operations is maintained in both cases.

-------
-- 3 --
---------------------
-- a) 10 / 2 + 9   --
-- b) 10 / (2 + 9) --
---------------------

-- a = 14
-- b = 0.909

-- Reason: (/) infixl 7
--         (+) infixl 6
-- Parentheses grant a higher precedence,
-- thus (/) no longer has the highest precedence.
