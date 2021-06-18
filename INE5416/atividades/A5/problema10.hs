
filtrar ::  (t -> Bool) -> [t] -> [t]
filtrar func lista = 
    [b | b <- lista, func b]

-- teste
divisivel3 :: Int -> Bool
divisivel3 a    | (mod a 3 == 0) = True
                | otherwise = False

main = do
    let a = [1, 3..15]
    print (a)
    print (filtrar divisivel3 a)