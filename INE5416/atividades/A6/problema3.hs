
data Ponto = R2 Float Float | R3 Float Float Float

distancia :: Ponto -> Ponto -> Float
distancia (R2 x1 y1) (R2 x2 y2) = sqrt ((x1 - x2)**2 + (y1 - y2)**2)
distancia (R3 x1 y1 z1) (R3 x2 y2 z2) = sqrt ((x1 - x2)**2 + (y1 - y2)**2 + (z1 - z2)**2) 
main = do
    putStrLn (show (distancia (R2 2 3) (R2 3 4)))
    putStrLn (show (distancia (R3 2 3 4) (R3 3 4 5)))