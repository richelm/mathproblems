collatz :: Int -> Int -> [Int]
collatz n s | n == 1 = [n,s]
            | (mod n 2) == 0 = collatz (div n 2) (s+1)
            | otherwise = collatz (div (3*n+1) 2) (s+1)
