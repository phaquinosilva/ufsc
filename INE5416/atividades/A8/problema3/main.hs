module Main(main) where

import Arvore

minhaArvore :: Arvore
minhaArvore = No 52 (No 32 (No 12 Null (No 12 Null Null)) (No 35 Null Null)) (No 56 (No 55 Null Null) (No 64 Null Null))

main = do 
    putStrLn (show (somaElementos minhaArvore))      
    putStrLn (show (buscaElemento minhaArvore 30))
    putStrLn (show (buscaElemento minhaArvore 55))
    putStrLn (show (minimoElemento minhaArvore))
    putStrLn (show (ocorrenciasElemento minhaArvore 35))
    putStrLn (show (ocorrenciasElemento minhaArvore 12))
    putStrLn (show (maioresQueElemento minhaArvore 35))
    putStrLn (show (mediaElementos minhaArvore))
    putStrLn (show (quantidade minhaArvore))
    putStrLn (show (elementos minhaArvore))