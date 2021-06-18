import numpy.linalg as la

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
    return a, b, x, o

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

a = [[2, 3, -4, -5], [4, -6, 1, 1], [2, 1, 1, 1], [4, -2, -2, 2]]
b = [14, 12, 5, 1]

a, b, x, o = gaussian_pivot_fixed_rows(a, b)

print("A = ")
for row in a:
    print(*row)
print("b = ")
print(*b)
print("x = ")
print(*x)
print("o = ")
print(*o)

print(la.solve(a, b))