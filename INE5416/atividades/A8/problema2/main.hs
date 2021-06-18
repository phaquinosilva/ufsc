module Main (main) where

import Ponto

distancia :: Ponto -> Ponto -> Float
distancia (x1, y1) (x2, y2) = sqrt $ (x1 - x2) ** 2 + (y1 - y2) ** 2

colineares :: Ponto -> Ponto -> Ponto -> Bool
colineares (x1, y1) (x2, y2) (x3, y3)
    | x1*y2 + y1*x3 + x2*y3 - x1*y3 - y1*x2 - y2*x3 == 0 = True
    | otherwise = False

formaTriangulo :: Ponto -> Ponto -> Ponto -> Bool
formaTriangulo pt1 pt2 pt3 = not colineares pt1 pt2 pt3

main = do
    print (distancia (3,4) (0,0))
    print (colineares (3,3) (4,4) (6,6))
    print (colineares (3,3) (4,4), (1,2))
    print (formaTriangulo (3,3) (4,4) (6,6))
    print (formaTriangulo(3,3) (4,4), (1,2))
    