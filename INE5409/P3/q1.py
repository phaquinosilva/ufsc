import numpy as np

def newton_dd(x, y, xx):
    # x, y: pontos para gerar polinomio
    # xx: pontos a serem interpolados
    n = len(x)
    # calculamos a tabela das diferencas divididas -- otimizar para nao precisarmos armazenar uma tabela
    a = [[0]*n for i in range(n)]
    # a primeira coluna e o y -- nao e necessario armazenar novamente
    for i in range(n):
        a[i][0] = y[i]
    # percorremos as demais colunas
    for j in range(1, n):
        # depois as linhas
        for i in range(j, n):
            a[i][j] = (a[i][j-1] - a[i-1][j-1])/(x[i] - x[i-j])
    # calculamos o polinomio interpolador
    p = [0]*len(xx)
    for k in range(len(p)):
        prod = 1
        for i in range(n):
            p[k] += a[i][i] * prod
            prod *= (xx[k] - x[i])
    return a, p

## VOU USAR ISSO AQUI PRA CALCULAR OS CORFICIENTES, PRA NAO TER QUE FAZER NA MAO
# funcao interpolacao
def interpolacao(x, y):
    # montando matriz de Vandermond
    V = vandermond(x)
    # calculamos os coeficientes do polinomio interpolador
    coef = np.linalg.solve(V, y)
    return coef

# calcula matriz de Vandermond
def vandermond(x):
    n = len(x)
    v = [[0]*n for i in range(n)]
    for i in range(n):
        for j in range(n):
            v[i][j] = x[i] ** j
    return v

def q1():
    x = np.array([-1, 0, 1, 3])
    y = np.array([3, 1, 3, 43])
    a, p2, = newton_dd(x, y, [2])
    coef = interpolacao(x, y)
    print(a)
    print(p2)
    print(coef)

q1()