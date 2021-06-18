import numpy.linalg as la

def lu_crout(a, b):
    n = len(a)
    y = [0.0]*n
    x = [0.0]*n
    # inicializamos L e U com zeros e mesma dimensao de A
    l = [[0.0]*n for i in range(n)]
    u = [[0.0]*n for i in range(n)]
    # lu = [[0.0]*n for i in range(n)]
    # primeira iteracao --> da pra fazer dentro do laco de repeticao ali embaixo
    # k = 0
    # u[k][k] = 1.0
    # for i in range(n): l[i][k] = a[i][k]  # definimos os L's
    # for j in range(1, n): u[k][j] = a[k][j]/l[k][k]  # definimos os U's
    # y[k] = b[k]/l[k][k]

    for k in range(0, n):
        u[k][k] = 1.0
        for i in range(k, n):
            sumL = sum([l[i][s] * u[s][k] for s in range(0,k)])
            # sumLU = sum([lu[i][s] * lu[s][k] for s in range(0,k)])
            l[i][k] = a[i][k] - sumL
            # lu[i][k] = a[i][k] - sumLU
        for j in range(k+1, n):
            sumU = sum([l[k][s] * u[s][j] for s in range(0,j)])
            # sumLU = sum([lu[k][s] * lu[s][j] for s in range(0,j)])
            u[k][j] = (a[k][j] - sumU)/l[k][k]
            # lu[k][j] = (a[k][j] - sumLU)/lu[k][k]
        # retrossubstituicao para Y
        sumY = sum(l[k][i]*y[i] for i in range(0,k))
        # sumLU = sum(lu[k][i]*y[i] for i in range(0,k))
        y[k] = (b[k] - sumY)/l[k][k]
        # y[k] = (b[k] - sumLU)/lu[k][k]
    
    # retrossubstituicao para X
    for k in range(n-1, -1, -1): # percorre lista ao contrario
        sumX = sum([u[k][i]*x[i] for i in range(k, n)])
        # sumX = sum([lu[k][i]*x[i] for i in range(k, n)])
        x[k] = (y[k] - sumX)/u[k][k]
        # x[k] = (y[k] - sumX)
    return l, u, x, y

a = [[2, 3, 4], [1, 1, 1], [4, -1, -2]]
b = [20, 6, -4]

l, u, x, y = lu_crout(a, b)

print("L = ")
for row in l:
    print(*row)
print("U = ")
for row in u:
    print(*row)
print("y = ")
print(*y)
print("x = ")
print(*x)

print(la.solve(a, b))