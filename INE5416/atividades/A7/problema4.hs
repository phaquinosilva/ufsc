
aproxima :: Float -> Integer
aproxima x  = 
    if snd (properFraction x) >= 0.5 then
        floor x
    else
        ceiling x

main = do
    print (aproxima 2.4)
    print (aproxima 2.6)