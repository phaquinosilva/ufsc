
mdc :: Int -> Int -> Int
mdc _x 0 = _x
mdc a b = mdc b (mod a b)

coprimos :: Int -> Int -> Bool
coprimos a b    | (mdc a b) == 1 = True
                | otherwise = False

main = do
    sa <- getLine
    sb <- getLine
    let a = (read sa :: Int)
    let b = (read sb :: Int)
    print (coprimos a b)