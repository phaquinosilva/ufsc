
diferencaMaiorMenor :: [Int] -> Int
diferencaMaiorMenor [] = 0
diferencaMaiorMenor [a] = 0
diferencaMaiorMenor a = maior a - menor a

menor :: [Int] -> Int
menor [] = 0
menor [a] = a
menor (a:b) = lesser a (menor b)

maior :: [Int] -> Int
maior [] = 0
maior [a] = a
maior (a:b) = greater a (maior b)

lesser :: Int -> Int -> Int
lesser a b  | (a > b) = b
            | (a <= b) = a

greater :: Int -> Int -> Int
greater a b | (a < b) = b
            | (a >= b) = a

main = do
    let a = [1, 3, 56, -2]
    let b = [1, 4..20]
    let c = [19,4,7,10,13,16]
    print (diferencaMaiorMenor a) -- 58
    print (diferencaMaiorMenor b) -- 18
    print (diferencaMaiorMenor c) -- 15