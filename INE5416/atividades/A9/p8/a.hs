
--A
soma :: Matrix Int -> Int
soma [] = 0
soma (m:ms) = sum m + soma ms 