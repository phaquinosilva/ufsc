
busca :: [Int] -> Int -> Bool
busca [] _ = False
busca (a:b) n   | (a == n) = True
                | otherwise = busca b n


main = do
    let a = [1, 3, 56, -2]
    let b = [1, 4..20]
    let c = [19,4,7,10,13,16]
    print (busca a 1) -- 58
    print (busca b 0) -- 18
    print (busca c 10) -- 15