
main = do
    strA <- getLine
    strB <- getLine
    strC <- getLine
    let a = read strA :: Float
    let b = read strB :: Float
    let c = read strC :: Float
    print ((\a b c -> if (a + b + c)/3 >= 6 then "aprovado" else "reprovado") a b c)