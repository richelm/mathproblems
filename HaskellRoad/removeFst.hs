-- Notes:
-- Most of this was gleaned from the Haskell wiki at:
--   https://wiki.haskell.org/How_to_work_on_lists

-- posx return the index of the first occurence of x in xs
posx n xs | not (elem n xs) = error "posx: n not in list"
          | otherwise       = [y | (y,z) <- zip[0..] xs, z==n] !! 0

-- removeFst removes the first occurence of x in ys. If x is not in ys,
--   then ys is returned, otherwise the list without first occurence of
--   x is returned. 
removeFst :: Int -> [Int] -> [Int]
removeFst x ys   | not (elem x ys) = ys
                 | otherwise       = fst (splitAt (posx x ys) ys) ++ tail (snd (splitAt (posx x ys) ys))
