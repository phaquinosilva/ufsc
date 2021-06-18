from math import exp

def f(x):
    return exp(x) - x**3 -7

def df(x):
    return exp(x) -3*x**2

x0 = 4.5
p = 1e-6

def newton(f, df, x0, p):
    x = x0
    # xn = x0 + 1
    it = 0
    fx = abs(f(x))
    while fx > p:
        it += 1
        # xn = x # para comparação
        x = x - f(x)/df(x)
        fx = abs(f(x))
    return x, it, fx

print(newton(f,df,x0,p))