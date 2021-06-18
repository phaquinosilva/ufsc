import numpy.linalg as la
from math import sqrt, prod

## ==== METODOS UTEIS PARA SISTEMAS LINEARES ==== ##

## calcula erros
def error(A, b, method_solution):
    np_solution = la.solve(A, b)
    return abs(la.norm(np_solution) - la.norm(method_solution))

## determina se o sistema e determinado ou se e indeterminado ou impossivel
def test_determinant(A):
    if la.det(A) != 0:
        return True
    return False

# determina se o sistema e mal condicionado
def bad_conditioning(a):
    ## tambem podemos avaliar o numero de condicionamento
    # if la.cond(a) > 100: return True
    # return False

    ## utilizando o determinante normalizado
    n = len(a)
    alpha = [0]*n
    for i in range(n):
        alpha[i] = sqrt(sum([a[i][j] ** 2 for j in range(n)]))
    det_a = abs(la.det(a))/prod(alpha)
    if det_a < 1e-2:
        return True
    return False    

"""
-> Determina se a matriz e diagonal dominante, que é 
 garantia de convergencia no Gauss-Seidel ou Jacobi
-> No entanto, nao ser diagonal dominante nao significa que
o metodo iterativo nao vai convergir
"""
def diagonal_dominante(a):
    # calcula vetor S
    s = [0]*len(a)
    for i in range(len(a)):
        for j in range(len(a)):
            s[i] += abs(a[i][j])
        s[i] -= abs(a[i][i])  # retiro o elemento da diagonal principal
    # testa diagonal dominante:
    for i in range(len(a)):
        if abs(a[i][i]) < s[i]:
            return False
    for i in range(len(a)):
        if abs(a[i][i]) > s[i]:
            return True
    return False

### METODOS DIRETOS ###

## ===== ELIMINACAO GAUSSIANA SEM PIVOTAMENTO ===== ##

# A: lista bidimensional nxn
# B: lista unidimensional de comprimento n
def gaussian_elim(a, b):
    #auxiliares
    n = len(a)
    x = [0]*n

    # triangularização da matriz
    for k in range(n):
        for i in range(k+1, n):
            norm = a[i][k]/a[k][k]
            for j in range(k, n):
                a[i][j] = a[i][j] - norm * a[k][j]
            b[i] = b[i] - norm * b[k]
    
    # retrosubstituição
    for i in range(n-1, -1, -1):
        sumX = sum([a[i][j]*x[j] for j in range(i+1, n)])
        x[i] = (b[i] - sumX)/a[i][i]
    return x

## ===== ELIMINACAO GAUSSIANA COM PIVOTAMENTO PARCIAL ===== ##

"""
-> O pivotamento serve para remover o problema de divisao por zero
 existente no metodo de Gauss sem pivotamento.
-> A razao para o pivotamento ser realizado a partir do maio numero
 em modulo na coluna pivo e que, segundo Gauss, isso suaviza os erros
 de arredondamento possiveis na operacao com linhas.
-> Tambem podemos fazer um pivotamento total, trocando linhas e colunas
fixando o maior elemento da matriz, alem de usarmos dois vetores para
realizar as trocas de linhas e colunas. O pivotamento total e mais 
custoso computacionalmente, nao sendo tao interessante.
"""
# Eliminacao gaussiana com pivotamento parcial e troca de linhas
def gaussian_pivot_changing_rows(a, b):

    # auxiliares
    n = len(a)
    x = [0]*n

    # eliminacao gaussiana
    for k in range(n):
        pivot_with_changing_rows(a, n, k)
        for i in range(k+1, n):
            norm = a[i][k]/a[k][k]
            a[i] = [a[i][j] - a[k][j]*norm for j in range(k, n)]
            b[i] = b[i] - b[k]*norm
    
    # retrossubstituicao
    for i in range(n-1, -1, -1):
        sumX = sum([a[i][j] * x[j] for j in range(i, n)])
        x[i] = (b[i] - sumX)/a[i][i]
    return x

# pivotamento parcial com troca de linhas
def pivot_with_changing_rows(m, n, i):
    max = -1e100
    for r in range(i, n):
        if max < abs(m[r][i]):
            max_row = r
            max = abs(m[r][i])
    m[i], m[max_row] = m[max_row], m[i]


# Eliminacao gaussiana com pivotamento parcial sem troca de linhas
# sem matriz expandida
def gaussian_pivot_fixed_rows(a, b):
   
    # auxiliares
    n = len(a)
    o = [i for i in range(n)]  # vetor ordenamento
    x = [0]*n

    # eliminacao gaussiana
    for k in range(n):
        pivot_with_fixed_rows(a, n, k, o)
        for i in range(k+1, n):
            norm = a[o[i]][k]/a[o[k]][k]
            for j in range(k, n):
                a[o[i]][j] = a[o[i]][j] - norm*a[o[k]][j] 
            b[o[i]] = b[o[i]] - b[o[k]]*norm

    # retrossubstituicao
    for i in range(n-1, -1, -1):
        sumX = sum([a[o[i]][j] * x[j] for j in range(i, n)])
        x[i] = (b[o[i]] - sumX)/a[o[i]][i]
    return x

# pivotamento sem troca de linhas
def pivot_with_fixed_rows(m, n, k, o):
    maior = -1e100
    p = k
    for i in range(k+1, n):
        if maior < abs(m[o[i]][k]):
            p = i
            maior = abs(m[o[i]][k])
    if p > k:
        o[k], o[p] = o[p], o[k]


## ===== DECOMPOSIÇAO LU DE CROUT/DOOLITLE ===== ##

def lu_crout(a, b):
    n = len(a)
    y = [0.0]*n
    x = [0.0]*n
    # inicializamos L e U com zeros e mesma dimensao de A
    # l = [[0.0]*n for i in range(n)]
    # u = [[0.0]*n for i in range(n)]
    lu = [[0.0]*n for i in range(n)]
    # primeira iteracao --> da pra fazer dentro do laco de repeticao ali embaixo
    # k = 0
    # u[k][k] = 1.0
    # for i in range(n): l[i][k] = a[i][k]  # definimos os L's
    # for j in range(1, n): u[k][j] = a[k][j]/l[k][k]  # definimos os U's
    # y[k] = b[k]/l[k][k]

    for k in range(0, n):
        # u[k][k] = 1.0
        for i in range(k, n):
            # sumL = sum([l[i][s] * u[s][k] for s in range(0,k)])
            sumLU = sum([lu[i][s] * lu[s][k] for s in range(0,k)])
            # l[i][k] = a[i][k] - sumL
            lu[i][k] = a[i][k] - sumLU
        for j in range(k+1, n):
            # sumU = sum([l[k][s] * u[s][j] for s in range(0,j)])
            sumLU = sum([lu[k][s] * lu[s][j] for s in range(0,j)])
            # u[k][j] = (a[k][j] - sumU)/l[k][k]
            lu[k][j] = (a[k][j] - sumLU)/lu[k][k]
        # retrossubstituicao para Y
        # sumY = sum(l[k][i]*y[i] for i in range(0,k))
        sumLU = sum(lu[k][i]*y[i] for i in range(0,k))
        # y[k] = (b[k] - sumY)/l[k][k]
        y[k] = (b[k] - sumLU)/lu[k][k]
    
    # retrossubstituicao para X
    for k in range(n-1, -1, -1): # percorre lista ao contrario
        # sumX = sum([u[k][i]*x[i] for i in range(k, n)])
        sumX = sum([lu[k][i]*x[i] for i in range(k, n)])
        # x[k] = (y[k] - sumX)/u[k][k]
        x[k] = (y[k] - sumX)
    return lu, x, y

## ===== METODO PARA MATRIZES TRIDIAGONAIS ===== ##

def tridiagonal_method(t, r, d, b):
    n = len(r)
    x = [0]*n
    for i in range(1, n):
        mult = t[i]/r[i-1]
        r[i] = r[i] - mult*d[i-1]
        b[i] = b[i] - mult*b[i-1]
    x[n-1] = b[n-1]/r[n-1]
    for i in range(n-2, -1, -1):
        x[i] = (b[i] - d[i]*x[i+1])/r[i]
    return x

# =============================================== #

### METODOS ITERATIVOS ###

## ===== METODO DE GAUSS-JACOBI ===== ##
def jacobi(a, b, p):
    n = len(a)
    r = [0]*n  # vetor residuo
    x0 = [0]*n  # vetor resultado - x(k)
    x1 = [0]*n  # vetor resultado - x(k+1)
    res = 1  # valor inicial do residuo
    k = 0  # iteracao atual
    while res > p or k > 100:
        k += 1
        for i in range(n):
            # calcula somatorio para j de 0 a n-1, excluindo j = i
            sum_ = 0
            for j in range(n):
                if i != j: 
                    sum_ += a[i][j]*x0[j]
            x1[i] = (b[i] - sum_)/a[i][i]
        # usando residuo maximo como criterio de parada
        for i in range(n):
            r[i] = abs(b[i] - sum([a[i][j]*x1[j] for j in range(0, n)]))
        res = max(r)
        x0 = x1
    return x1, k

## ===== METODO DE GAUSS-SEIDEL SEM RELAXACOES ===== ##

def gauss_seidel(a, b, p):
    n = len(a)
    r = [0]*n  # vetor residuo
    phi = [0]*n  # palpite inicial
    res = 1  # valor inicial do residuo
    k = 0  # iteracao atual
    while (res > p):
        k += 1
        for i in range(n):
            sigma = 0
            for j in range(n):
                if j != i:
                    sigma += a[i][j]*phi[j]
            phi[i] = (b[i] - sigma)/a[i][i]
        # criterio de parada residuo maximo
        for i in range(n):
            r[i] = abs(b[i] - sum([a[i][j]*phi[j] for j in range(0, n)]))
        res = max(r)
    return phi, k

## ===== METODO DE GAUSS SEIDEL COM RELAXACOES ===== ##

# Utilizado para sistemas mal condicionados
# Operar o menos possivel na matriz de coeficientes

# Gauss com sobre-relaxacao
def sor(a, b, p, w):
    ### OBS: se w = 1, perde-se o efeito do relaxamento,
    ## e temos um Gauss-Seidel simples
    n = len(a)
    r = [0]*n  # vetor residuo
    phi = [0]*n  # palpite inicial
    res = 1  # valor inicial do residuo
    k = 0  # iteracao atual
    while (res > p):
        k += 1
        for i in range(n):
            sigma = 0
            for j in range(n):
                if j != i:
                    sigma += a[i][j]*phi[j]
            phi[i] += ((b[i] - sigma)/a[i][i] - phi[i])*w
        # criterio de parada residuo maximo
        for i in range(n):
            r[i] = abs(b[i] - sum([a[i][j]*phi[j] for j in range(0, n)]))
        res = max(r)
    return phi, k


##### TESTES #####

# t = [0, 1, 1, 1, 1]
# r = [2, 2, 2, 2, 2]
# d = [1, 1, 1, 1, 0]
# b = [4, 4, 0, 0, 2]
# print(tridiagonal_method(t, r, d, b))

a = [[4, 2, 3], [2, -4, -1], [-1, 1, 4]]
b = [7, 1, -5]
 
# ex_a = [[-0.421, 0.784, 0.279], [0.448, 0.832, 0.193], [0.421, 0.784, -0.207]]
# ex_b = [0, 1, 0]

# c = [[1, 3], [1, 3.00001]]
# d = [4, 4.00001]

# print(gauss_seidel(a, b, 1e-6))
# gaussian_test = gaussian_pivot_fixed_rows(a, b)
# print(gaussian_test)
# print(error(a, b, gaussian_test))

LU, x, y = lu_crout(a, b)

print('LU =')
for row in LU:
    print(*row)

print('x = ')
print(*x)

print('y = ')
print(*y)

print(error(a, b, x))
## POSSIVEL TO DO ##

# Talvez converter todas as estruturas de dados pra primitivas de numpy, pra ter mais eficiencia
