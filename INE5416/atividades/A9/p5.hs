
dist = (\(a,b,c) (x,y,z) -> sqrt $ (a-x)**2 + (b-y)**2 + (c-z)**2)

main = do
    strA <- getLine
    strB <- getLine
    let a = read strA :: (Float, Float, Float)
    let b = read strB :: (Float, Float, Float)
    print (dist a b)