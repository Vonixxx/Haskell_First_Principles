--------------------
-- Bottom Madness --
--------------------

----------------------
-- Will it Blow Up? --
-------------------------------
-- Will the following        --
-- return a value or bottom? --
----------------------------------------------------------
-- a) sum [1, undefined, 3]                             --
-- b) length [1, 2, undefined]                          --
-- c) length $ [1, 2, 3] ++ undefined                   --
-- d) take 1 $ filter odd [1, 3, undefined]             --
-- e) take 2 $ filter odd [1, 3, undefined]             --
-- f) take 3 $ filter odd [1, 3, undefined]             --
-- g) take 1 $ filter even [1, 3, undefined]            --
-- h) [x^y | x <- [1..5], y <- [2, undefined]]          --
-- i) take 1 $ filter even [1, 2, 3, undefined]         --
-- j) take 1 $ [x^y | x <- [1..5], y <- [2, undefined]] --
----------------------------------------------------------

-- a) λ> Exception
--    Reason: `sum` forces the evaluation of the values within each cons
--            cell, so when it encounters undefined it throws an exception.

-- b) λ> 3
--    Reason: `length` only has to traverse the spine, it does not
--            force the evaluation of the values within cons cells.

-- c) λ> 4
--    Reason: see reasoning on b.

-- d) λ> [1]
--    Reason: although the portion after `$` would cause an exception by itself, together with
--            `take` it does not because it forces the evaluation of only x nr. of cons cells and an
--            appropriate value lies within the range take demands, leaving the undefined value untouched.

-- e) λ> [1,3]
--    Reason: see reasoning on d.

-- f) λ> Exception
--    Reason: here `take` forces the evaluation of the
--            cons cell which contains the undefined value.

-- g) λ> Exception
--    Reason: here it is because filter finds no
--            even value within the range `take` demands.

-- h) λ> Exception
--    Reason: this function produces a list of all values of x to the power of y,
--            thereby forcing the evaluation of all cons cells within y, including undefined.

-- i) λ> [2]
--    Reason: see reasoning on d.

-- j) λ> [1]
--    Reason: see reasoning on d.

--------------------------------
-- Intermission: Normal Form? --
-------------------------------------------
-- For the following, determine whether  --
-- it’s in normal form, WHNF or neither. --
-------------------------------------------
-- a) (_, 'b')                 --
-- b) [1, 2, 3, 4, 5]          --
-- c) enumFromTo 1 10          --
-- d) 1 : 2 : 3 : 4 : _        --
-- e) sum (enumFromTo 1 10)    --
-- f) length [1, 2, 3, 4, 5]   --
-- g) ['a'..'m'] ++ ['n'..'z'] --
---------------------------------

-- a) WHNF.
--    Reason: the tuple data constructor has
--            its values partially evaluated.

-- b) Normal form.
--    Reason: the list data constructor
--            has all values evaluated.

-- c) Neither.
--    Reason: the outermost component of
--            the expression is a function.

-- d) WHNF.
--    Reason: the list data constructor has
--            its values partially evaluated.

-- e) Neither.
--    Reason: the outermost component of
--            the expression is a function.

-- f) Neither.
--    Reason: the outermost component of
--            the expression is a function.

-- g) Neither.
--    Reason: the outermost component of
--            the expression is a function.
