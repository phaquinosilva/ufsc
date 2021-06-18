
varetas :: Int -> Int -> Int -> String
varetas x y z   | (x <= y + z) && (y <= x + z) && (z <= x + y) = "eh possivel"
                | otherwise = "nao eh possivel"

main = do 
    sx <- getLine
    sy <- getLine
    sz <- getLine
    let x = (read sx :: Int)
    let y = (read sy :: Int)
    let z = (read sz :: Int)
    print (varetas x y z)