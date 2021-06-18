
mdc :: Int -> Int -> Int
mdc _x 0 = _x
mdc a b = mdc b (mod a b)

mmc :: Int -> Int -> Int
mmc a b =  abs (a * b) `div` (mdc a b)

main = do
    sa <- getLine
    sb <- getLine
    let a = (read sa :: Int)
    let b = (read sb :: Int)
    print (mmc a b)