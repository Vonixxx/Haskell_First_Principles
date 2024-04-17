--------------------------
-- Thy Fearful Symmetry --
--------------------------

-------
-- 1 --
-----------------------------------------------------
-- Write a function using `takeWhile` and          --
-- `dropWhile` according to the following example. --
-----------------------------------------------------
-- λ> one "sheryl wants fun"   --
-- λ> ["sheryl","wants","fun"] --
---------------------------------

one :: String -> [String]
one xs = go xs []
         where go xs ys
                | null xs   = ys
                | otherwise = go (drop 1 $ dropWhile (/= ' ') xs)
                                 ((++) ys $ (:[]) $ takeWhile (/= ' ') xs)

-------
-- 2 --
-----------------------------------------
-- Write a function                    --
-- according to the following example. --
-----------------------------------------------------
-- fstPhrase = "Tyger Tyger, burning bright\n"     --
-- sndPhrase = "In the forests of the night\n"     --
-- trdPhrase = "What immortal hand or eye\n"       --
-- fthPhrase = "Could frame thy fearful symmetry?" --
--                                                 --
-- sentences = fstPhrase                           --
--             ++ sndPhrase                        --
--             ++ trdPhrase                        --
--             ++ fthPhrase                        --
-----------------------------------------------------
-- λ> putStrLn sentences                --
-- λ> Tyger Tyger, burning bright       --
--    In the forests of the night       --
--    What immortal hand or eye         --
--    Could frame thy fearful symmetry? --
------------------------------------------
-- myLines :: String -> [String] --
-- myLines = ???                 --
-----------------------------------

fstPhrase = "Tyger Tyger, burning bright\n"    
sndPhrase = "In the forests of the night\n"    
trdPhrase = "What immortal hand or eye\n"      
fthPhrase = "Could frame thy fearful symmetry?"
                                               
sentences = fstPhrase                          
            ++ sndPhrase                       
            ++ trdPhrase                       
            ++ fthPhrase                       

two :: String -> [String]
two xs = go xs []
         where go xs ys
                | null xs   = ys
                | otherwise = go (drop 1 $ dropWhile (/= '\n') xs)
                                 ((++) ys $ (:[]) $ takeWhile (/= '\n') xs)

-------
-- 3 --
------------------------------------------------------------------------
-- Write a function that parameterizes the character you’re breaking  --
-- the string argument on such that it works for the prior functions. --
------------------------------------------------------------------------

three :: String -> Char -> [String]
three xs x = go xs []
             where go xs ys
                    | null xs   = ys
                    | otherwise = go (drop 1 $ dropWhile (/= x) xs)
                                     ((++) ys $ (:[]) $ takeWhile (/= x) xs)
