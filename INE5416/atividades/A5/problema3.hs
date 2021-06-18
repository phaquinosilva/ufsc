
menor :: [Int] -> Int
menor [] = 0
menor [a] = a
menor (a:b) = lesser a (menor b)

lesser :: Int -> Int -> Int
lesser a b  | (a > b) = b
            | (a <= b) = a

{--um tanto pior--
menor (a:b) | (a > menor b) = menor b
            | otherwise = a
-}

main = do
    let a = [1, 3, 56, -2]
    let b = [1, 4..20]
    let c = [19,4,7,10,13,16]
    print (menor a)
    print (menor b)
    print (menor c)