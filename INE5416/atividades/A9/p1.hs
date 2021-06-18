
main = do
    strX <- getLine
    strY <- getLine
    print ((\x -> \y -> x && not y || not x && y) (read strX::Bool) (read strY::Bool))
