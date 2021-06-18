
divisivel :: Int -> Int -> Bool
divisivel a b | (mod a b == 0) = True
            | otherwise = False

main = do
    sa <- getLine
    sb <- getLine
    let a = (read sa :: Int)
    let b = (read sb :: Int)
    print (divisivel a b)