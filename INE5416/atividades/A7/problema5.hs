
proximo :: Int -> Int -> Bool
proximo x y | abs (x-y) <= 1 = True
            | otherwise = False

main = do
    print (proximo 3 5)
    print (proximo 2 3)
