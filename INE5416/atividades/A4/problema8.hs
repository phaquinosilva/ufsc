
bhaskara :: Float -> Float -> Float -> (Float, Float)
bhaskara a b c =
    ((-b - sqrt (b**2 - 4*a*c))/2*a, (-b + sqrt (b**2 - 4*a*c))/2*a)

main = do
    sa <- getLine
    sb <- getLine
    sc <- getLine
    let a = (read sa :: Float)
    let b = (read sb :: Float)
    let c = (read sc :: Float)
    print (bhaskara a b c)