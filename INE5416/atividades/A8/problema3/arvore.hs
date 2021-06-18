module Arvore   (Arvore,
                somaElementos, buscaElemento,
                limiteSup, minimo, minimoElemento,
                ocorrenciasElemento, maioresQueElemento,
                mediaElementos, quantidade,
                elementos) where
    

data Arvore = Null | No Int Arvore Arvore

somaElementos :: Arvore -> Int
somaElementos Null = 0
somaElementos (No n esq dir) = n + (somaElementos esq) + (somaElementos dir)

buscaElemento :: Arvore -> Int -> Bool
buscaElemento Null _ = False
buscaElemento (No n esq dir) x 
    | (n == x) = True                           
    | otherwise = (buscaElemento esq x) || (buscaElemento dir x)

limiteSup :: Int
limiteSup = 1000 --Define um limite superior para o maior número

minimo :: Int -> Int -> Int
minimo x y | (x < y) = x
           | otherwise = y

minimoElemento :: Arvore -> Int
minimoElemento Null = limiteSup 
minimoElemento (No n esq dir) = 
    minimo n (minimo (minimoElemento esq) (minimoElemento dir))

-- A
ocorrenciasElemento ::  Arvore -> Int -> Int
ocorrenciasElemento Null _ = 0
ocorrenciasElemento (No n esq dir) x
    | (n==x) = 1 + ocorrenciasElemento esq x + ocorrenciasElemento dir x
    | otherwise = ocorrenciasElemento esq x + ocorrenciasElemento dir x

-- B
maioresQueElemento ::  Arvore -> Int -> Int
maioresQueElemento Null _ = 0
maioresQueElemento (No n esq dir) x
    | (n > x) = 1 + maioresQueElemento esq x + maioresQueElemento dir x
    | otherwise = maioresQueElemento esq x + maioresQueElemento dir x

-- C
mediaElementos ::  Arvore -> Float
mediaElementos arv = 
    fromIntegral (somaElementos arv) / fromIntegral (quantidade arv)

-- D
quantidade ::  Arvore -> Int
quantidade Null = 0
quantidade (No n esq dir) = 1 + quantidade esq + quantidade dir

-- E
elementos ::  Arvore -> [Int]
elementos Null = []
elementos (No n esq dir) = [n] ++ elementos esq ++ elementos dir
