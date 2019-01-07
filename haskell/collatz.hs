collatz :: Int -> Int
collatz n | n == 1 = 1
          | (mod n 2) == 0 = collatz (div n 2)
          | otherwise = collatz (div (3*n+1) 2)
