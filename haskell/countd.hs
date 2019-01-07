countd :: Int -> [Int]
countd n == 1 = xs ++ [1]
countd xs = xs ++ countd (n-1)
