module Main (main) where

import Formas (Forma (Trapezio), area)

main = do
    print (area (Trapezio 12 5 7))