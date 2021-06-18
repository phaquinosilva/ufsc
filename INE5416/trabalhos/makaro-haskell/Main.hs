
import Makaro
-- import Tests

-- no. 84 - 10x10
problem84 = (m10, t10, a10) 
        where
                m10 = [ [3, -1, 0, -1, 0, 0, 1, 3, -1, 0],
                        [0, 0, 3, 0, 0, -1, 0, 4, 0, 1],
                        [0, 2, 0, 0, 0, 0, 1, 3, 0, -1],
                        [0, 0, -1, 3, 0, -1, 0, 0, -1, 1],
                        [3, -1, 0, 2, 0, 0, -1, 1, 0, 0],
                        [-1, 0, 0, -1, 1, 0, 0, 0, -1, 2],
                        [1, 0, 1, 0, 0, 4, 1, 0, 0, 1],
                        [0, -1, 0, 3, 0, 0, 0, 0, 0, 4],
                        [0, 0, 0, 0, -1, 0, 2, -1, 0, 2],
                        [-1, 0, -1, 0, 2, 0, 0, 0, -1, 0]]
                t10 = [ 
                        [(0,0),(1,0),(2,0)],
                        [(0,2),(1,1),(1,2),(2,1),(2,2)],
                        [(0,4),(1,4)],
                        [(1,3),(2,3),(2,4)],
                        [(0,5),(0,6),(0,7)],
                        [(2,5),(2,6),(2,7),(1,6),(1,7)],
                        [(1,8),(2,8)],
                        [(0,9),(1,9)],
                        [(3,0),(3,1),(4,0)],
                        [(4,2),(5,2),(5,1)],
                        [(3,3),(3,4),(4,3),(4,4)],
                        [(3,6),(3,7),(4,7),(4,8)],
                        [(4,5),(5,5),(5,6),(5,7)],
                        [(3,9),(4,9),(5,9)],
                        [(6,0),(7,0),(8,0)],
                        [(6,1),(6,2)],
                        [(6,3),(6,4),(6,5),(5,4)],
                        [(7,2),(7,3),(7,4),(8,3)],
                        [(6,6),(7,6),(7,5)],
                        [(6,7),(7,7)],
                        [(6,8),(6,9),(7,8)],
                        [(8,1),(8,2),(9,1)],
                        [(9,3),(9,4)],
                        [(8,5),(8,6),(9,5)],
                        [(9,6),(9,7)],
                        [(7,9),(8,9),(9,9),(8,8)]] -- yes, I just did write nearly a hundred coordinates by hand
                a10 = [ ((0,1), 's'), ((0,3), 'w'), ((0,8), 'w'),
                        ((1,5), 's'), 
                        ((3,2), 'e'), ((3,5), 'n'), ((3,8), 's'),
                        ((4,6), 's'), 
                        ((5,8), 'n'),
                        ((7,1), 'w'), 
                        ((8,4), 'w'), ((8,7), 'e'), 
                        ((9,2), 'n'), ((9,8), 'n')]
                -- solution can be found in http://www.cross-plus-a.com/html/cros7mkro.htm

-- pretty print for matrixes
first :: (t, u, v) -> t
first (stuff, _, _) = stuff 

mtxPrint :: Puzzle -> IO ()
--mtxPrint [] = putStr "nao eh possivel resolver"
mtxPrint puzzle = mtxPrintBack mtx 0 0 (length mtx)
        where mtx = first puzzle

mtxPrintBack :: [[Int]] -> Int -> Int -> Int -> IO()
mtxPrintBack mtx i j l  | i == l = do
                                putStr "\n"
                                mtxPrintBack mtx 0 (j+1) l
                        | j == l = putStr "\n"
                        | otherwise = do
                                putStr (show((mtx!!j)!!i))
                                putStr "\t"
                                mtxPrintBack mtx (i+1) j l

main = do
    -- para executar um teste, fazemos a chamada da funcao
    --     solve testeNxN
    -- para imprimir o resultado, usamos a funcao
    --     mtxPrint :: Puzzle -> IO()

    -- mtxPrint $ solve test3x3
    -- mtxPrint $ solve test5x5
    -- mtxPrint $ solve test8x8
    mtxPrint $ solve problem84