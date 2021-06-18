# -*- coding: utf-8 -*-

import math

## Exercicios sobre calculo lambda em python ##
def ex_1():
    x, y = input().split()
    print((lambda x, y: int(x) + int(y))(x, y))

def ex_2():
    a, b, c = input().split()
    a, b, c = int(a), int(b), int(c)
    print((lambda a, b, c: "aprovado" if (a+b+c)/3 >= 6 else "reprovado")(a, b, c))

def ex_3():
    a, b, c = input().split()
    a, b, c = float(a), float(b), float(c)
    bhask = lambda a, b, c: ((-b - math.sqrt(b**2 - 4*a*c))/2*a, (-b + math.sqrt(b**2 - 4*a*c))/2*a)
    print(bhask(a,b,c))

def ex_4():
    x1, x2, x3 = input().split()
    x1, x2, x3 = float(x1), float(x2), float(x3)
    y1, y2, y3 = input().split()
    y1, y2, y3 = float(y1), float(y2), float(y3)
    dist = lambda x, y: math.sqrt((x[0] - y[0])**2 + (x[1] - y[1])**2 + (x[2] - y[2])**2)
    print(dist((x1, x2, x3), (y1, y2, y3)))

def ex_5():
    a, b, c = input().split()
    a, b, c = float(a), float(b), float(c)
    maior = lambda a, b, c: a if (a > b and a > c) else (b if b > c else c)
    print(maior(a, b, c))

def ex_6():
    # usando 'map', que mapeia algum iterable como argumentos de uma funcao
    inputs = [1, 2, 3, 4]
    outputs = list(map(lambda x: x**3, inputs))
    print(outputs)

def ex_7():
    # usando 'filter', que cria uma lista de elementos para os quais uma funcao retorna True
    inputs = [1, 6, 5, 4, 7, 2, 2, 3, 4, 6, 71, 6, 21, 63, 7344, 1298139, 98]
    multiples_of_three = list(filter(lambda x: x % 3 == 0, inputs))
    print(multiples_of_three)

def ex_8():
    n = int(input())

    # a principio, eu gostaria de fazer com o combinador Y
    # y = lambda f: (lambda x: f(x(x)) (lambda x: f(x(x)))
    
    # mas e mais facil fazer assim, ja que eu teria que reescrever essa funcao 'lambda'
    fib = lambda n: 1 if n < 3 else fib(n-1) + fib(n-2)

    print(fib(n))
