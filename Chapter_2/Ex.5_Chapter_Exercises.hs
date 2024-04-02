----------------------
-- Parenthesization --
----------------------

-- Given what we know about the precedence of *, +, and ^, how can
-- we parenthesize the following expressions more explicitly without
-- changing their results?

-- 1.
-- 2 + 2 * 3 - 1

one :: Int
one = (2 + 2) * (3 - 1)

-- 2.
-- (^) 10 $ 1 + 1

two :: Int
two = 10 ^ (1 + 1)

-- 3.
-- 2 ^ 2 * 4 ^ 5 + 1

three :: Int
three = ((2 ^ 2) * (4 ^ 5)) + 1

----------------------------
-- Equivalent expressions --
----------------------------

-- Which of the following pairs of expressions will return the same
-- result when evaluated?

-- 1.
-- 2
-- 1 + 1

-- True

-- 2.
-- 10 ^ 2
-- 10 + 9 * 10

-- True

-- 3.
-- 400 - 37
-- (-) 37 400

-- False

-- 4.
-- 100 / 3
-- 100 `div` 3

-- False

-- 5.
-- 2 * 5 + 18
-- 2 * (5 + 18)

-- False

-----------------------------
-- More fun with functions --
-----------------------------

-- z     = 7
-- y     = z + 8
-- x     = y ^ 2
-- waxOn = x * 5

-- 1.
-- Now, you have a value called waxOn in your REPL. What do you
-- think will happen if you enter:

-- 10 + waxOn

-- 1135

-- (+10) waxOn

-- 1135

-- (-) 15 waxOn

-- -1110

-- (-) waxOn 15

-- 1110

-- 2.
-- Enter the triple function:

-- triple x = x * 3

-- 3.
-- Now, what will happen if we enter this at our GHCi prompt?
-- triple waxOn

-- 1125 * 3 = 3375

-- 4.
-- Rewrite waxOn as an expression with a where clause in your source
-- file.

z = 7
x = y ^ 2
y = z + 8

waxOn :: Integer
waxOn = x * 5
        where z = 7
              y = z + 8
              x = y ^ 2

-- 5.
-- To the same source file where you have waxOn, add the triple
-- function.

triple :: Integer -> Integer
triple x = x * 3

tripleWaxOn :: Integer
tripleWaxOn = triple waxOn

-- 6.
-- Now, without changing what you’ve done so far in that file, add
-- a new function called waxOff that looks like this:
-- waxOff x = triple x

waxOff = triple

-- 7.
-- Load the source file into your REPL, and enter waxOff waxOn at
-- the prompt.
-- You now have a function, waxOff, that can be applied to a variety
-- of arguments—not just waxOn but any (numeric) value you want
-- to substitute for x. Play with that a bit. What is the result of
-- waxOff 10 or waxOff (-50)? Try modifying your waxOff function to
-- do something new—perhaps you want to first triple the x value
-- and then square it or divide it by 10.

waxOffMod :: Integer -> Float
waxOffMod x = fromInteger $ triple x ^ 2 `div` 10
