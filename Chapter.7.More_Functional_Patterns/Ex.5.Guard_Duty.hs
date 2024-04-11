----------------
-- Guard Duty --
----------------

avgGrade :: (Fractional a, Ord a) => a -> Char
avgGrade x
         | y >= 0.9  = 'A'
         | y >= 0.8  = 'B'
         | y >= 0.7  = 'C'
         | y >= 0.59 = 'D'
         | otherwise = 'F'
           where y = x / 100

-------
-- 1 --
-------
-- What happens if the otherwise guard lies at the top?

-- It always gets pattern matched

-------
-- 2 --
-------
-- What happens if the guards are reordered?

-- It will no longer pattern match appropriately,
-- an incorrect grade will be assigned to the input

-------
-- 3 --
-------
-- What is the result?
three xs
      | xs == reverse xs = True
      | otherwise = False

-- a) xs written backwards when it’s True.
-- b) True when xs is a palindrome.
-- c) False when xs is a palindrome.
-- d) False when xs is reversed.

-- b

-------
-- 4 --
-------
-- What type of argument can it take?

-- String

-------
-- 5 --
-------
-- What is its type?

-- three :: Eq a => [a] -> Bool

-------
-- 6 --
-------
-- What does the following function return?
six x
    | x == 0 = 0
    | x > 0  = 1
    | x < 0  = -1

-- a) The value of its argument plus or minus 1.
-- b) The negation of its argument.
-- c) An indication of whether its argument +, - or 0.
-- d) Binary machine language.

-- b

-------
-- 7 --
-------
-- What types of arguments can numbers take?

-- All numbers which fall under the Num class

-------
-- 8 --
-------
-- What is its type?

-- six :: (Num a, Ord a) => a -> a
