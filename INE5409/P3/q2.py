import numpy as np

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
    
def q2():
    x = np.array([0, 0.5, 1, 2.5, 3])
    y = np.array([2, 2.6, 3.7, 13.2, 21])
    coef = ajuste_exponencial(x, y)
    print(coef)

q2()