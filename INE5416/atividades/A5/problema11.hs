
primeiros ::  Int -> [t] -> [t]
primeiros n lista = prox n lista 0

prox :: Int -> [t] -> Int -> [t]
prox n (a:b) i  | (n==i) = []
                | otherwise = [a] ++ (prox n b (i+1))

main = do
    let a = [1, 3..15]
    print (a)
    print (primeiros 5 a)