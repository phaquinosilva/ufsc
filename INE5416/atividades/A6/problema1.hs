
type Nome = String
type Disciplina = String
type Nota = Float
type Aluno = (Nome, Disciplina, Nota, Nota, Nota)

-- A
aluno :: Int -> Aluno
aluno 1 = ("Joao", "Fabricacao de Queijos I", 5.7, 7.0, 9.0)
-- B
aluno 2 = ("Bernardina", "Literatura Subaquatica II", 10.0, 9.7, 8.9)
aluno 3 = ("Safadina", "Introducao a Sexologia de Especies Extraterrestres", 3.6, 9.0, 9.0)
aluno 4 = ("Minney", "Topico avancado em Cinema Western IV", 10.0, 2.0, 2.4)

-- C
getNome :: Aluno -> String
getNome (n, _, _, _, _) = n

--D
calculaMedia :: Aluno -> Float
calculaMedia (_, _, n1, n2, n3) = (n1+n2+n3)/3

media :: Int -> Float
media i = calculaMedia (aluno i)

--E
mediaTurma :: Int -> Float
mediaTurma i = (media i + media_aux (i-1)) / fromIntegral i
media_aux i | (i==0) = 0
            | otherwise = media i + media_aux (i-1)

main = do
    putStrLn (show (getNome (aluno 1)))
    putStrLn (show (media 1))
    putStrLn (show (mediaTurma 4))