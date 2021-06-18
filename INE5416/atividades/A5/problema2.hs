
comprimento :: [Int] -> Int
comprimento [] = 0
comprimento (_:b) = 1 + (comprimento b)

soma :: [Int] -> Int
soma [] = 0
soma (a:b) = a + soma b

media :: [Int] -> Float
media [] = 0
media a = 
    fromIntegral (soma a) / fromIntegral (comprimento a)

main = do
    let a = [1, 4..20]
    let b = []
    print (a)
    print (media a)
    print (media b)