-- ---------------------------------------------------------------------
-- FILE: chap1_exercises.hs
-- Author: Shawn Rich <richs@msu.edu>
--
-- My solutions to exercises in chpater 1 of Haskell Road
-- 
-- ---------------------------------------------------------------------
-- CHANGELOG:
-- 2019.01.03 (richs) File created.
--
-- ---------------------------------------------------------------------

-- find the minimum of a list of integers
minInt :: [Int] -> Int
minInt []     = error "empty list"
minInt [x]    = x
minInt (x:xs) = min x (minInt xs)

-- posx return the index of the first occurence of x in xs
posx n xs | not (elem n xs) = error "posx: n not in list"
          | otherwise       = [y | (y,z) <- zip[0..] xs, z==n] !! 0

-- removeFst removes the first occurence of x in ys. If x is not in ys,
--   then ys is returned, otherwise the list without first occurence of
--   x is returned. 
-- Referenece: https://wiki.haskell.org/How_to_work_on_lists
removeFst :: Int -> [Int] -> [Int]
removeFst x ys   | not (elem x ys) = ys
                 | otherwise       = fst (splitAt (posx x ys) ys) ++ tail (snd (splitAt (posx x ys) ys))

-- sort a list of integers
srtInts :: [Int] -> [Int]
srtInts [] = []
srtInts xs = m : (srtInts (removeFst m xs)) where m = minInt xs
