
-- D
permLinha :: [[Int]] -> Int -> Bool
permLinha m i = permLinha' m i 0 False
permLinha' m i j um
    | j+1 > length m && um == True = True -- final e so teve um 1
    | j+1 > length m && um == False = False
    | (m!!i)!!j == 1 && um == False = permLinha' m i (j+1) True -- apareceu um e ainda nao teve 1
    | (m!!i)!!j == 0 && um == False = permLinha' m i (j+1) um -- apareceu zero e ainda nao teve 1
    | (m!!i)!!j == 0 && um == True = permLinha' m i (j+1) um -- apareceu zero e ja teve 1
    | otherwise = False

permColuna :: [[Int]] -> Int -> Bool
permColuna m j = permColuna' m j 0 False
permColuna' m j i um
    | i+1 > length m && um == True = True -- final e so teve um 1
    | i+1 > length m && um == False = False -- final e nao teve um
    | (m!!i)!!j == 1 && um == False = permColuna' m j (i+1) True -- apareceu um e ainda nao teve 1
    | (m!!i)!!j == 0 && um == False = permColuna' m j (i+1) um -- apareceu zero e ainda nao teve 1
    | (m!!i)!!j == 0 && um == True = permColuna' m j (i+1) um -- apareceu zero e ja teve 1
    | otherwise = False

permutacao :: [[Int]] -> Bool
permutacao m = permutacao' m 0
permutacao' m i 
    | i >= length m = True
    | permColuna m i && permLinha m i  = permutacao' m (i+1)
    | otherwise = False

