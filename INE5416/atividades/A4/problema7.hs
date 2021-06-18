
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

main = do
    n_string <- getLine
    let n = (read n_string :: Int)
    print (fib n)