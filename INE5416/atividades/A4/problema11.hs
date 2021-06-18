
mdc :: Int -> Int -> Int
mdc _x 0 = _x
mdc a b = mdc b (a `mod` b)

main = do
    sa <- getLine
    sb <- getLine
    let a = (read sa :: Int)
    let b = (read sb :: Int)
    print (mdc a b)