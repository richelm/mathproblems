digs :: Integral x => x -> [x]
digs 0 = []
digs x = mod x 10 : digs (div x 10)

sumd :: Int -> Int
sumd x
  | elem (sum (digs x)) [1..9] = (sum (digs x))
  | otherwise                  = sumd (sum (digs x))
