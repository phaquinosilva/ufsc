
apagarEnquanto :: (t -> Bool) -> [t] -> [t]
apagarEnquanto _ [] = []
apagarEnquanto f (a:b)  | (f a) = apagarEnquanto f b
                        | otherwise = (a:b)

par :: Int -> Bool
par x = (mod x 2)==0

main = do
    let a = [2,4,1,2,3,4,5]
    print (apagarEnquanto par a)
