
-- estendendo do Algoritmo de Euclides 
mdc :: Int -> Int -> Int -> Int
mdc _x 0 0 = _x
mdc _x _y 0 = mdc _y (_x `mod` _y) 0
mdc x y z = mdc z x (y `mod` z)

-- usando o Algoritmo de Euclides 2x
mdc2 :: Int -> Int -> Int
mdc2 _x 0 = _x
mdc2 a b = mdc2 b (a `mod` b)

mdc3 :: Int -> Int -> Int -> Int
mdc3 a b c = mdc2 a (mdc2 b c)

main = do
    sa <- getLine
    sb <- getLine
    sc <- getLine
    let a = (read sa :: Int)
    let b = (read sb :: Int)
    let c = (read sc :: Int)
    
    -- print (mdc 32 48 56)
    -- print (mdc2 32 (mdc2 48 56))
    -- print (mdc3 32 48 56)

    print (mdc a b c)
