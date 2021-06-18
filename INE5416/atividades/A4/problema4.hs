
xor :: Bool -> Bool -> Bool
xor x y = (x && not y) || (not x && y)

main = do
    s_x <- getLine
    s_y <- getLine
    let x = (read s_x :: Bool)
    let y = (read s_y :: Bool)
    print (xor x y)