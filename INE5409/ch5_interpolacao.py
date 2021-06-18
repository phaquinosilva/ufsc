import numpy as np
# import matplotlib.pyplot as plt  # para plotar graficos

## Parte 1: Interpolacao  simples ##

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

# calcula pontos para plot
# xx: vetor dos pontos originais interpolados
# coef: vetor de coeficientes
# n: numero de pontos que se deseja calcular
def points(xx, coef, n):
    # criamos o vetor de x
    x = [i for i in np.linspace(xx.min(), xx.max(), n)]
    # calculamos os valores do polinomio nos pontos:
    p = [0]*n
    for i in range(n):
        p[i] = 0
        for j in range(n):
            p[i] += coef[j] * (x[i] ** j)
    return p

# teste da funcao, exercicio do moodle
def test_interpolacao():
    # tabela de pontos
    x = np.array([-1, 0, 1])
    y = np.array([4, 1, -1])
    # calcula coeficientes
    coef = interpolacao(x, y)
    # calcula pontos em y usando o polinomio 
    p = points(x, coef, 3)
    # testa
    assert (p == y).all()

# test_interpolacao()


## Parte 2: Lagrange ##

# Com Lagrange, nao precisamos armazenar a matriz de Vandermonde
# e, matematicamente, temos o mesmo polinomio interpolador.

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

# teste da funcao, exercicio do moodle
def teste_lagrange():
    # quanto mais pontos utilizados, melhor a aproximacao
    # com 9 pontos, interpolando xx = 1
    x = np.arange(- np.pi, np.pi, 0.75)
    y = np.sin(x)
    lag = lagrange(x, y, 1)
    # calcula erro
    erro = abs(lag - np.sin(1))
    # print(erro)
    assert erro < 1e-4

    # testando com varios pontos
    x1 = np.linspace(-np.pi, np.pi, num=100)
    p = [0]*len(x1)
    for i in range(len(x1)):
        p[i] = lagrange(x, y, x1[i])
    # calcula vetor erro
    erro_v = abs(np.sin(x1) - np.array(p))
    # print(erro_v)
    # print(np.linalg.norm(erro_v))
    for i in erro_v:
        assert i < 1e-2
    
teste_lagrange()

# OBS: Interpolar por Lagrange ou por interpolacao polinomial (sistema)
# deve retornar o mesmo resultado. Implementar esse teste
def test_lagrange_sistema():
    pass


## Parte 3: Diferencas Divididas de Newton ##

# Novamente aqui, devemos encontrar o mesmo polinomio interpolador que os demais
# metodos, logo, a precisao encontrada na interpolacao e a mesma

# metodo das diferencas divididas
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
    return p

def teste_newton1():
    # quanto mais pontos utilizados, melhor a aproximacao
    # com 9 pontos, interpolando xx = 1
    x = [-1, 0, 2]
    y = [4, 1, -1]
    dd_matrix = newton_dd(x, y, [1])
    print(dd_matrix)

# mesmo teste realizado para Lagrange
def teste_newton2():
    # quanto mais pontos utilizados, melhor a aproximacao
    # com 9 pontos, interpolando xx = 1
    x = np.arange(- np.pi, np.pi, 0.75)
    y = np.sin(x)

    # verifica se nossa interpolacao passa por todos os pontos
    zeros = newton_dd(x, y, x)
    assert (zeros - y).all() == 0

    dd = newton_dd(x, y, [1])
    # calcula erro
    erro = abs(dd[0] - np.sin(1))
    print(erro)
    assert erro < 1e-4

    # testando com varios pontos
    x1 = np.linspace(-np.pi, np.pi, num=15)
    p = newton_dd(x, y, x1)
    # calcula vetor erro
    erro_v = abs(np.sin(x1) - np.array(p))
    print(erro_v)
    for i in erro_v:
        assert i < 1e-2

teste_newton2()

# To-do: modificar o metodo de newton pra nao ser necessario armazenar a matriz