-----------------
-- A Head Code --
-----------------

-- Determine in your head what the following expressions
-- will return.These examples are prefixed with let,
-- because they are not declarations, they are expressions:

-- 1.
-- let x = 5 in x

-- Returns 5.

-- 2.
-- let x = 5 in x * x

-- Returns 25.

-- 3.
-- let x = 5; y = 6 in x * y

-- Returns 30.

-- 4.
-- let x = 3; y = 1000 in x + 3

-- Returns 6.

-- Rewrite the following examples with where clauses:

-- 1.
-- let x = 3; y = 1000 in x * 3 + y

one :: Int
one = x * 3 + y
      where x = 3
            y = 1000

-- 2.
-- let y = 10; x = 10 * 5 + y in x * 5

two :: Int
two = x * 5
      where y = 10
            x = 10 * 5 + y
-- 3.
-- let x = 7
--     z = y * 10
--     y = negate x
-- in z / x + y

three :: Float
three = z / x + y
        where x = 7
              z = y * 10
              y = negate x
