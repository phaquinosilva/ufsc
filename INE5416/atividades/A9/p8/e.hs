
-- E: backtracking quadrado magico

somaLinha :: [[Int]] -> Int -> Int
somaLinha matrix linha = sum (matrix!!linha)

somaColuna :: [[Int]] -> Int -> Int
somaColuna m j = somaColuna' m j 0
somaColuna' m j i 
    | i+1 <= length m = (m!!i)!!j + somaColuna' m j (i+1)
    | otherwise = 0

somaDiagonalPrincipal :: [[Int]] -> Int
somaDiagonalPrincipal m = somaDiagonalPrincipal' m 0
somaDiagonalPrincipal' m i
    | i+1 <= length m = (m!!i)!!i + somaDiagonalPrincipal' m (i+1)
    | otherwise = 0

somaDiagonalSecundaria :: [[Int]] -> Int
somaDiagonalSecundaria m = somaDiagonalSecundaria' m (length m -1)
somaDiagonalSecundaria' m i
    | i > -1 = (m!!i)!!i + somaDiagonalSecundaria' m (i-1)
    | otherwise = 0

testeDiagonais :: [[Int]] -> Bool
testeDiagonais m = somaDiagonalPrincipal m == somaDiagonalSecundaria m

testeLinhasColunasIguais :: [[Int]] -> Bool
testeLinhasColunasIguais m = testeLinhasColunasIguais' m 0
testeLinhasColunasIguais' m i
    | i == length m -2 = True
    | somaLinha m i == somaLinha m (i+1) && somaColuna m i == somaColuna m (i+1) && somaColuna m i == somaLinha m i = testeLinhasColunasIguais' m (i+1)
    | otherwise = False

quadradoMagicoValido :: [[Int]] -> Bool
quadradoMagicoValido quad
    -- existe algum caso em que as linhas e as colunas tem soma igual mas a diagonal nao tem o mesmo valor?
    | testeLinhasColunasIguais quad && testeDiagonais quad = True
    | otherwise = False

-- Next open position in the board matrix
nextOpenPosition :: Data -> Pos -> Pos
nextOpenPosition m (i, j)
    | length m > j+1 && (m!!i)!!(j+1) == 0 = (i, j+1)
    | length m > j+1 && (m!!i)!!(j+1) /= 0 = nextOpen m (i, j+1)
    | length m > i+1 && head (m!!(i+1)) == 0 = (i+1, 0)
    | length m > i+1 && head (m!!(i+1)) /= 0 = nextOpen m (i+1, 0)
    | otherwise = (-1, -1) -- fazendo as vezes de null

-- S: current state; [S] all possible board solutions
backtrack :: S -> [S]
backtrack s | solved s = [s] -- solution
            | invalid s = [] -- deadtrail, can't develop further
            | otherwise = concatMap backtrack $ children s -- concatenate recursively children nodes that can be developed

solved = quadradoMagicoValido
invalid = not quadradoMagicoValido

-- Non-deterministically develops all children nodes that can be developed
children :: Puzzle -> [Puzzle]
children s 
    | nextOpenPosition s == (-1, -1) = s
    | otherwise = [update s pos opt | opt <- validMoves s pos]
        where pos = nextOpenPosition s

-- Updates board with the new data being evaluated at the specified position
-- to be used only in conjunction with 'validMoves' and 'nextOpenPosition'
update :: Puzzle -> Pos -> Int -> Puzzle

-- OBS: the next two functions can be refactored into one single function, if necessary
-- returns true if data matrix is finished and wrong, or if validMoves in the nextOpenPosition returns empty
invalid :: Puzzle -> Bool
-- return true iff the matrix is finished (nextOpenPosition return (-1, -1) and every rule was obeyed
solved :: Puzzle -> Bool
