import numpy as np
import matplotlib.pyplot as plt

# coeficiente do menor ao maior grau em c
def ajuste_polinomial(x, y, m=1):
    n = len(x)
    a = [[0]*(m+1) for i in range(m+1)]
    b = [0]*(m+1)
    for i in range(m+1):
        for j in range(i, m+1):
            # substituir por sum()
            a[i][j] = 0
            for k in range(n):
                a[i][j] += x[k]**(i + j)
            # a matriz e simetrica
            a[j][i] = a[i][j]
        # tambem podemos substituir por sum()
        b[i] = 0
        for k in range(n):
            b[i] += y[k] * x[k]**i
    # calculamos os coeficientes
    c = np.linalg.solve(a, b)
    # construimos a funcao ajuste g
    # neste caso, g é um vetor com pontos que
    # podemos utilizar para plotar a funcao ajuste
    g = [0]*n
    for i in range(n):
        for k in range(m):
            g[i] += c[k] * x[i]**k
    return g, c

# coeficientes: f(x) = a * exp(b * x)
# a = c[0]
# b = c[1]
def ajuste_exponencial(x, y):
    # matriz de coeficientes nao muda
    # com np, calcula pra todo o vetor
    z = np.log(y)
    n = len(x)
    a = [[0]*2 for i in range(2)]
    b = [0]*2
    for i in range(2):
        for j in range(i, 2):
            # substituir por sum()
            a[i][j] = 0
            for k in range(n):
                a[i][j] += x[k]**(i + j)
            # a matriz e simetrica
            a[j][i] = a[i][j]
        # tambem podemos substituir por sum()
        b[i] = 0
        for k in range(n):
            b[i] += z[k] * x[k]**i
    # calculamos os coeficientes
    c = np.linalg.solve(a, b)
    c[0] = np.exp(c[0])
    return c

# x = np.array([1.3, 3.4, 5.1, 6.8, 8])
# y = np.array([2, 5.2, 3.8, 6.1, 5.8])
# ajuste_polinomial(x, y)
 