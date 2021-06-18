import numpy as np


# Newton-Cotes com a regra de Simpson
def nc_simpson(f, a, b, n):
    # f: funcao da integral a ser calculada
    # a, b: max e min do intervalo
    # n: numero *par* de trapezios a serem utilizados
    h = (b-a)/n
    x = np.linspace(a, b, n+1)
    y = f(x)
    # nao sei se essas somas vao funcionar assim
    s1 = 0
    s2 = 0
    for i in range(1, n):
        if i%2 == 1:
            s1 += y[i]
        else:
            s2 += y[i]
    sc = (h/3) * (y[0] + 4*s1 + 2*s2 + y[n])
    return sc


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


def q4():
    def f(x):
        return np.log(x**2 + 1)

    simpson = nc_simpson(f, 0, 2, 8)
    quadratura = gauss_legendre(f, 0, 2, 4)
    print(simpson)
    print(quadratura)
    assert abs(simpson - 1.43317531959389) < 1e-14
    assert abs(quadratura - 1.43327682828475) < 1e-14

q4()
    