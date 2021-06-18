
maior :: Float -> Float -> Float -> Float
maior a b c = 
    if a >= b && a >= c then
        a
    else if b >= a && b >= c then
        b
    else
        c

main = do
    sa <- getLine
    sb <- getLine
    sc <- getLine
    let a = (read sa :: Float)
    let b = (read sb :: Float)
    let c = (read sc :: Float)
    print (maior a b c)