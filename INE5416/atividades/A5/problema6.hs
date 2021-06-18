
ocorrencias :: [Int] -> Int -> Int
ocorrencias [] _ = 0
ocorrencias (a:b) n | (a == n) = 1 + ocorrencias b n
                    | otherwise = ocorrencias b n

main = do
    let a = [1, 3, 56, -2]
    let b = [1, 4..20]
    let c = [19,4,7,10,10,16]
    print (ocorrencias a 1) -- 58
    print (ocorrencias b 0) -- 18
    print (ocorrencias c 10) -- 15