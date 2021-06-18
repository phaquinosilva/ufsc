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

a = [[4, 1, 2], [1, 2, 1], [1, 0.1, 1]]
b = [1, 4, -3]

print(sor(a, b, 1e-6, 1.1))