
avg :: Float -> Float -> Float -> String
avg a b c = 
    if (a + b + c) / 3 >= 6 then
        "aprovado"
    else
        "reprovado"

main = do
    sa <- getLine
    sb <- getLine
    sc <- getLine
    let a = (read sa :: Float)
    let b = (read sb :: Float)
    let c = (read sc :: Float)
    print (avg a b c)