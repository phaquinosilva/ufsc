
mapear :: (t -> y) -> [t] -> [y]
mapear func lista = [func b | b <- lista]

-- teste
divisivel3 :: Int -> Bool
divisivel3 a    | (mod a 3 == 0) = True
                | otherwise = False

main = do
    let a = [1, 3..15]
    print (a)
    print (mapear divisivel3 a)