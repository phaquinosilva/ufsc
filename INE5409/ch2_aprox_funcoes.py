from math import sin, cos, exp

###### MÉTODOS DE PARTIÇÃO ######

def bissection(f, bound, p):
    xm = bound[1]
    it = 0
    while abs(f(xm)) > p:
        it += 1
        if f(bound[0])*f(bound[1]) < 0:
            #old_x = xm
            xm = (bound[0] + bound[1]) / 2
            if xm == 0:
                return xm
            elif f(bound[0])*f(xm) < 0:
                bound[1] = xm
            else:
                bound[0] = xm
    return xm, it

def false_position(f, bound, p):
    xm = bound[1]
    it = 0
    while abs(f(xm)) > p:
        it += 1
        if f(bound[0])*f(bound[1]) > 0: return None
        xm = bound[0] - (f(bound[0])*(bound[1] - bound[0]))/(f(bound[1]) - f(bound[0]))
        if xm == 0:
            return xm
        elif f(bound[0])*f(xm) < 0:
            bound[1] = xm
        else:
            bound[0] = xm
    return xm, it

###### MÉTODOS ITERATIVOS ######

# f -> função que queremos aproximar
# df -> derivada analítica da função
# x0 -> chute inicial (aleatório, mais ou menos)
def newton(f, df, x0, p):
    x = x0
    xn = x0 + 1
    it = 0
    while abs(xn - x) > p:
        it += 1
        xn = x # para comparação
        x = x - f(x)/df(x)
    return x, it

def secant(f, x0, p):
    xi = x0
    xj = x0 + 1
    it = 0
    while abs(xi - xj) > p:
        it += 1
        temp = xj
        xj = xj - ((xj - xi)*f(xj))/(f(xj)-f(xi))
        xi = temp
    return xj, it

## EQ. POLINOMIAIS ##
def birge_vieta(coef,x0, p):
    x = x0 + 1
    xn = x0
    while abs(xn - x) > p:
        x = xn
        b = coef[0]
        cj = b
        for i in coef[1:]:
            b = i + b*x
            ci = cj
            cj = b + ci*x
        xn = x - (b/ci)
    return xn

# ###### TESTES ######
# # intervalos
# a_int = [-1, 0]
# b_int = [0, 2]
# c_int = [0, 1]
#
# # funções
# def func_a(x):
#     return exp(x) + x
# 
# def func_b(x):
#     return exp(x) - 2*cos(x)
#     
# def func_c(x):
#     return exp(x)*sin(x) - 1
# def dfunc_c(x):
#     return exp(x)*(sin(x) + cos(x))
#
# ### BISSEÇÃO ###
# print(bissection(func_a, a_int, 1e-2))
# print(bissection(func_b, b_int, 1e-2))
# print(bissection(func_c, c_int, 1e-2))
#
# ### FALSA POSIÇÃO ###
# print(false_pos(func_a, a_int))
# print(false_pos(func_b, b_int))
# print(false_pos(func_c, c_int))
#
# ### BIRGE_VIETA ###
# print(birge_vieta([1, 0, 2, -1], 1, 1e-2))

# print(newton(func_c, dfunc_c, 2, 1e-2))