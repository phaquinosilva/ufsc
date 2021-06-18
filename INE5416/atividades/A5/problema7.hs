
alunos :: [(Int, String, Float)]
alunos = [(1, "Ana", 3.4), (2, "Bob", 6.7), (3, "Tom", 7.6)]

getNome :: (Int, String, Float) -> String
getNome (a,b,c) = b

getNota :: (Int, String, Float) -> Float
getNota (a,b,c) = c

getPrimeiroAluno :: [(Int, String, Float)] -> (Int, String, Float)
getPrimeiroAluno (a:_) = a

gerarPares :: [t] -> [u] -> [(t,u)] 
gerarPares l1 l2 = [(a,b) | a <- l1, b <- l2]

-- A
aprovado_aux :: (Int, String, Float) -> Bool
aprovado_aux aluno  | (getNota aluno >= 6.0) = True
                    | otherwise = False

aprovados :: [(Int, String, Float)] -> [String]
aprovados alunos = 
    map getNome (filter aprovado_aux alunos)

-- B
aprovados2 :: [(Int, String, Float)] -> [String]
aprovados2 alunos = 
    [getNome b | b <- alunos, aprovado_aux b]

-- C: rever isso com o Maicon, pensar como fazer mantendo os genericos e utilizando gerarPares
gerarParesAlunos :: [(Int, String, Float)] -> [(Int, String, Float)] -> [(String, String)] 
gerarParesAlunos l1 l2 = [(getNome a, getNome b) | a <- l1, b <- l2, diferente a b]
    where
        diferente x y   | (getNome x == getNome y) = False
                        | otherwise = True


main = do
    print ('A')
    print (aprovados alunos)
    print ('B')
    print (aprovados2 alunos)
    print ('C')
    print (gerarParesAlunos alunos alunos)