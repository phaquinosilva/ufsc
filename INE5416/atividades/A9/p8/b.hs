
--B
somaMatrix :: [[Int]] -> [[Int]] -> [[Int]]
somaMatrix [] a = a
somaMatrix a [] = a
somaMatrix (a:as) (b:bs) = [somaLista a b] ++ somaMatrix as bs

somaLista :: [Int] -> [Int] -> [Int]
somaLista [] a = a
somaLista a [] = a
somaLista (l:ls) (x:xs) = [l + x] ++ somaLista ls xs
-- alternativa: fazer com map?