

maior = (\(a,b,c) -> if a >= b && a >= c then a else if b >= a && b >= c then b else c)

main = do
    strA <- getLine
    let a = read strA :: (Float, Float, Float)
    print (maior a)