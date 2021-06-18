
operate :: Char -> Float -> Float -> Float
operate op x y  | (op == '+') = x + y
                | (op == '-') = x - y
                | (op == '*') = x * y
                | (op == '/') = x / y
                | otherwise = 0

main = do
    op <- getChar
    _ <- getLine
    sx <- getLine
    sy <- getLine
    let x = (read sx :: Float)
    let y = (read sy :: Float)
    print (operate op x y)