digs :: Integral x => x -> [x]
digs 0 = []
digs x = mod x 10 : digs (div x 10)
