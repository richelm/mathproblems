myLast :: [a] -> a
myLast []     = undefined
myLast [x]    = x
myLast (x:xs) = myLast xs
           
myButLast :: [a] -> a
myButLast []  = undefined
myButLast [x] = x
myButLast (xs:x) = 
