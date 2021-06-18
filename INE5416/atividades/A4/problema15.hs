
mdc :: Int -> Int -> Int
mdc _x 0 = _x
mdc a b = mdc b (mod a b)

coprimos :: Int -> Int -> Bool
coprimos a b    | (mdc a b) == 1 = True
                | otherwise = False

tot_euler :: Int -> Int
tot_euler n = tot_euler_it n 0 1 
tot_euler_it :: Int -> Int -> Int -> Int
tot_euler_it n qtd i = 
    if i == n then
        qtd
    else if coprimos n i then
        tot_euler_it n (qtd + 1) (i + 1)
    else
        tot_euler_it n qtd (i + 1)

main = do
    n_s <- getLine
    let n = (read n_s :: Int)
    print (tot_euler n)