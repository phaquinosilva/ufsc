import numpy as np

## Parte 1: Formulas de Newton-Cotes ##

# Newton-Cotes com a regra dos trapezios
def nc_trapezios(f, a, b, n):
    # f: funcao da integral a ser calculada
    # a, b: max e min do intervalo
    # n: numero de trapezios a serem utilizados
    h = (b-a)/n
    x = np.linspace(a, b, n+1)
    y = f(x)
    s = 0
    for i in range(1, n):
        s += y[i]
    tc = (h/2) * (y[0] + 2*s + y[n])
    return tc

def teste_nc_trapezios():
    def f(x):
        return x**3
    analytical = 0.25
    # OBS: quanto maior o n, maior sera a precisao da integral.
    # Aqui, coloquei 100 por preguica, mas podemos ir testando a cada
    # iteracao.
    nc = nc_trapezios(f, 0, 1, 100)
    assert abs(nc - analytical) < 1e-4

# Newton-Cotes com a regra de Simpson
def nc_simpson(f, a, b, n):
    # f: funcao da integral a ser calculada
    # a, b: max e min do intervalo
    # n: numero *par* de trapezios a serem utilizados
    h = (b-a)/n
    x = np.linspace(a, b, n+1)
    y = f(x)
    print(y)
    # nao sei se essas somas vao funcionar assim
    s1 = 0
    s2 = 0
    for i in range(1, n):
        if i%2 == 1:
            s1 += y[i]
        else:
            s2 += y[i]
    print(s1, s2)
    sc = (h/3) * (y[0] + 4*s1 + 2*s2 + y[n])
    return sc

def teste_nc_simpson():
    def f(x):
        return 0.2 + 25*x - 200*x**2 + 675*x**3 - 900*x**4 +400*x**5
    expected = 1.62346666
    # OBS: quanto maior o n, maior sera a precisao da integral.
    # Aqui, coloquei 100 por preguica, mas podemos ir testando a cada
    # iteracao.
    nc = nc_simpson(f, 0, 0.8, 4)
    assert abs(nc - expected) < 1e-4

# Automatizando a precisao: calcula com a precisao desejada sem 
# necessidade do resultado exato (criterios de conversao)
def precise_nc(nc, f, a, b, p):
    # nc: tipo de formula usada (nc_trapezios ou nc_simpson)
    # a, b: limites de integracao
    # p: precisao
    n = 0
    novo = 1
    anterior = 0
    while abs(novo - anterior) > p:
        anterior = novo
        n += 1
        novo = nc(f, a, b, n)
    return novo, n

## Parte 2: Quadratura Gaussiana ##

# Para os metodos de quadratura gaussiana nesta disciplina, vamos utilizar look-up tables.
# Existem alguns jeitos de implementar look-up tables em python, e vou optar por um dict.

# Estas tabelas sao usadas no metodo de Gauss-Legendre:
# Tabela de raizes dos polinomios de Legendre
t_table = { 1: np.array([0]),
            2: np.array([-1/np.sqrt(3), 1/np.sqrt(3)]),
            3: np.array([np.sqrt(3/5), -np.sqrt(3/5), 0]), 
            4: np.array([np.sqrt(3/7 + (2/7)*np.sqrt(6/5)), -(np.sqrt(3/7 + (2/7)*np.sqrt(6/5))),
                np.sqrt(3/7 - (2/7)*np.sqrt(6/5)), -(np.sqrt(3/7 - (2/7)*np.sqrt(6/5)))])
            }

# Tabela de pesos dos polinomios de legendre
w_table = { 1: np.array([2]),
            2: np.array([1, 1]),
            3: np.array([5/9, 5/9, 8/9]),
            4: np.array([(18 - np.sqrt(30))/36, (18 - np.sqrt(30))/36, 
                (18 + np.sqrt(30))/36, (18 + np.sqrt(30))/36])
            }

def gauss_legendre(f, a, b, n):
    # f: integrando
    # n: numero de pontos de integracao
    # a, b: limites de integracao
    # busco as listas de raizes e pesos de Legendre
    t = t_table.get(n)
    w = w_table.get(n)
    x = ((b-a)/2) * t + (b+a)/2
    dx = (b-a)/2
    F = f(x)*dx
    # estou substituindo o somatorio por um produto interno
    i = np.dot(w,F)
    return i

def teste_gl():
    def f(x):
        return x**3 / 3
    integ = gauss_legendre(f, 2, 6, 2)
    exact = 320/3
    assert abs(exact - integ) < 1e-4

# OBS1: "globais sao ruins", mas esse arquivo e so educativo, e nao um programa real
# OBS2: No plano de ensino constam os metodos Gauss-Legendre e Gauss-Chebyshev.
# Em aula e nos materiais, so foi passado o metodo de Gauss-Legendre, faltando ainda
# - Gauss-Chebyshev
# - Controle de instabilidade
# - Integracao multipla