
bhaskara = (\a b c -> (-b + sqrt (b**2 - 4*a*c))/2)

main = do
    strA <- getLine
    strB <- getLine
    strC <- getLine
    let a = read strA :: Float
    let b = read strB :: Float
    let c = read strC :: Float
    print (bhaskara a b c)