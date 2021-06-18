
dist x1 x2 x3 y1 y2 y3 = 
    sqrt((x1 - y1)**2 + (x2 - y2)**2 + (x3 ** y3)**2 )


main = do
    sx1 <- getLine
    sx2 <- getLine
    sx3 <- getLine
    sy1 <- getLine
    sy2 <- getLine
    sy3 <- getLine
    let x1 = (read sx1 :: Float) 
    let x2 = (read sx2 :: Float) 
    let x3 = (read sx3 :: Float) 
    let y1 = (read sy1 :: Float) 
    let y2 = (read sy2 :: Float) 
    let y3 = (read sy3 :: Float)
    print (dist x1 x2 x3 y1 y2 y3)