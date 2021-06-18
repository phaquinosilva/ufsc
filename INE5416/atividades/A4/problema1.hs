
power :: Float -> Float -> Float 
power x y = x ** y

main = do
    strX <- getLine
    strY <- getLine
    let x = (read strX :: Float)
    let y = (read strY :: Float)
    print (power x y)