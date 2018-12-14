posx n xs = [y | (y,z) <- zip[0..] xs, z==n]

removeFst _ []                       = []
removeFst x (y:ys) | not (elem x ys) = error "x not in ys"
                   | otherwise       = splitAt ((posx 2 xs) !! 0 xs in ys ++ (tail zs)
-- something like this in the otherwise clause
-- let (ys,zs) = splitAt n xs   in   ys ++ (tail zs)
-- refer to https://wiki.haskell.org/How_to_work_on_lists
