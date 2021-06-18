
primo :: Int -> Bool
teste_primo :: Int -> Int -> Bool
-- comecar em i = 2
primo n = teste_primo n 2
teste_primo n i = 
    if n <= 2 then
        if n == 2 then True
        else False
    else if mod n i == 0 then
        False
    else if i * i > n then
       True
    else
        -- pra fazer iteracoes
        teste_primo n (i + 1)

main = do
    n_str <- getLine
    let n = (read n_str :: Int)
    print (primo n)