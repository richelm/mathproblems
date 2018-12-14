minInt :: [Int] -> Int
minInt []     = error "empty list"
minInt [x]    = x
minInt (x:xs) = min x (minInt xs)
