
par :: [Int] -> [Bool]
par list = map (\n -> mod n 2 == 0) list

main = do
    let a = [1, 4..15]
    print (a)
    print (par a)