
absolute :: Float -> Float
absolute x =
    if x >= 0 then
        x
    else
        -x

main = do
    s_x <- getLine
    let x = (read s_x :: Float)
    print (absolute x)