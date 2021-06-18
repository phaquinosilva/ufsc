
inverte :: [t] -> [t]
inverte [] = []
inverte (a:b) = inverte b++[a] 

main = do
    let a = [1, 2.. 20]
    print (inverte a)