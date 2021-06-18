import Data.Function

fib :: Int -> Int
fib = fix (\f n -> if n==0 then 0 else if n==1 then 1 else (f (n-1)) + (f (n-2)))

main = do
    strN <- getLine
    let n = read strN :: Int
    print (fib n)