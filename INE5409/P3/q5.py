import numpy as np

def lagrange(x, y, ponto):
    # x, y: listas de pontos para gerar o polinomio
    # ponto: ponto a ser interpolado
    n = len(x)
    p = 0
    for i in range(n):
        num = 1
        den = 1
        for j in range(n):
            if j != i:
                num *= ponto - x[j]
                den *= x[i] - x[j]
        l = num/den
        p +=  y[i] * l
    return p

def q5():
    def f(x):
        return x - np.e**x
    x = np.array([0, 0.5, 1])
    y = f(x)
    exato = f(0.7)
    p2 = lagrange(x, y, 0.7)
    erro = abs(p2 - exato)
    
    print(p2)
    print(exato)
    print(erro)

    assert abs(p2 - (-1.32604477935664)) < 1e-14
    assert abs(exato - (-1.31375270747048)) < 1e-14
    assert abs(erro - 0.0122920718861637) < 1e-14

q5()
