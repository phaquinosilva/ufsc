module Main where

    --C: testes quadrado magico

    somaLinha :: [[Int]] -> Int -> Int
    somaLinha matrix linha = sum (matrix!!linha)

    somaColuna :: [[Int]] -> Int -> Int
    somaColuna m j = somaColuna' m j 0
    somaColuna' m j i 
        | i+1 <= length m = (m!!i)!!j + somaColuna' m j (i+1)
        | otherwise = 0

    somaDiagonalPrincipal :: [[Int]] -> Int
    somaDiagonalPrincipal m = somaDiagonalPrincipal' m 0
    somaDiagonalPrincipal' m i
        | i+1 <= length m = (m!!i)!!i + somaDiagonalPrincipal' m (i+1)
        | otherwise = 0

    somaDiagonalSecundaria :: [[Int]] -> Int
    somaDiagonalSecundaria m = somaDiagonalSecundaria' m (length m -1)
    somaDiagonalSecundaria' m i
        | i > -1 = (m!!i)!!i + somaDiagonalSecundaria' m (i-1)
        | otherwise = 0

    toList :: [[Int]] -> [Int]
    toList [] = []
    toList (m:ms) = m ++ toList ms

    umDeCada :: [[Int]] -> Bool
    umDeCada m = umDeCada'' (toList m)
    umDeCada'' m = umDeCada' m (length m)
    umDeCada' m i
        | i == 0 = True
        | elem i m = umDeCada' m (i-1)
        | otherwise = False

    testeDiagonais :: [[Int]] -> Bool
    testeDiagonais m = somaDiagonalPrincipal m == somaDiagonalSecundaria m

    testeLinhasColunasIguais :: [[Int]] -> Bool
    testeLinhasColunasIguais m = testeLinhasColunasIguais' m 0
    testeLinhasColunasIguais' m i
        | i == length m -2 = True
        | somaLinha m i == somaLinha m (i+1) && somaColuna m i == somaColuna m (i+1) && somaColuna m i == somaLinha m i = testeLinhasColunasIguais' m (i+1)
        | otherwise = False


    quadradoMagicoValido :: [[Int]] -> Bool
    quadradoMagicoValido quad
        | umDeCada quad && testeLinhasColunasIguais quad && testeDiagonais quad = True
        | otherwise = False

    main = do
        let a =[[9, 5, 1], [2, 7, 6],  [4, 3, 8]]
        print (quadradoMagicoValido a)