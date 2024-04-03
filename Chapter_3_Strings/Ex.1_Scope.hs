-----------
-- Scope --
-----------

-- 1.
-- These lines of code are from a REPL session. Is y in scope for z?
-- Prelude> x = 5
-- Prelude> y = 7
-- Prelude> z = x * y

-- True

-- 2.
-- These lines of code are from a REPL session. Is h in scope for g?
-- Go with your gut here:
-- Prelude> f = 3
-- Prelude> g = 6 * f + h

-- False
-- Reason: h is undefined

-- 3.
-- This code sample is from a source file. Is everything we need to
-- execute area in scope?
-- r      = d / 2
-- area d = pi * (r * r)

-- False
-- Reason:
area d = pi * (r * r)
         where r = d / 2

-- 4.
-- This code is also from a source file. Now, are r and d in scope
-- for area?
-- area d = pi * (r * r)
-- where r = d / 2

-- True
