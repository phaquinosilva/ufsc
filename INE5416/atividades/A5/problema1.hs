
soma :: [Int] -> Int
soma [] = 0
soma (a:b) = a + soma b

main = do
    let a = [1, 4..20]
    let b = []
    print (a)
    print (soma a)
    print (soma b)