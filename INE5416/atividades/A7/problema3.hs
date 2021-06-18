
class (Integral x) => MeuInt x where
    bigger :: x -> x -> x
    smaller :: x -> x -> x

    bigger a b  | a > b = a
                | otherwise = b
    
    smaller a b | a == bigger a b = b
                | otherwise = a

    -- A
    par :: x -> Bool
    par a   | mod a 2 == 0 = True
            | otherwise = False

    -- B
    impar :: x -> Bool
    impar a = not (par a)
    
    -- C
    primo :: x -> Bool
    teste_primo :: x -> x -> Bool
    -- comecar em i = 2
    primo n = teste_primo n 2
    teste_primo n i =
        if n <= 2 then
            if n == 2 then True
            else False
        else if mod n i == 0 then
            False
        else if i * i > n then
            True
        else
            teste_primo n (i + 1)
    
    -- D
    mdc :: x -> x -> x
    mdc _x 0 = _x
    mdc a b = mdc b (a `mod` b)

    -- E
    (===) :: x -> x -> Bool
    x === y | abs (x-y) <= 1 = True
            | otherwise = False

    --F, G, H

instance MeuInt Integer
instance MeuInt Int

main = do
    --- testes
    print (par (462::Integer))
    print (impar (462::Integer))
    print (primo (255::Integer))
    print (mdc (12::Integer) (16::Integer))
    print ((23::Integer) === (41::Integer))
