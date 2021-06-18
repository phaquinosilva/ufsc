
apagar ::  Int -> [t] -> [t]
apagar n lista = resto n lista 0

resto :: Int -> [t] -> Int -> [t]
resto _ [] _ = []
resto n (a:b) i | (n>i) = resto n b (i+1)
                | otherwise = [a] ++ (resto n b (i+1))

main = do
    let a = [1, 3..15]
    print (a)
    print (apagar 5 a)