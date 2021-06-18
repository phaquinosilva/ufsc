
area :: Float -> Float -> Float
area base altura = base * altura / 2

main = do
    s_base <- getLine
    s_altura <- getLine
    let base = (read s_base :: Float)
    let altura = (read s_altura :: Float)
    print (area base altura)