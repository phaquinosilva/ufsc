import numpy as np
from scipy.optimize import fsolve

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

def sistemas_nao_lineares_analitical():

    ## a ideia e linearizar o sistema, para podermos utilizar
    ## os metodos de resolucao de sistemas lineares
    erro = 1e-6
    x = np.array([1, 5])
    k = 0
    m_delta = 1
    while (m_delta > erro):
        k += 1
        print('k = ' + str(k))
        ## Defino a matriz Jacobiana analitica a partir do meu sistema nao linear
        # Alternativamente, podemos fazer isso com metodos numericos
        J = np.array(
            [[1, 1],
            [2*x[0], 2*x[1]]]
            )

        # Entao, nosso vetor F e definido como:
        F = np.array(
            [x[0] +x[1] -3,
            x[0]**2 + x[1]**2 -9]
            )

        ## Chamamos um METODO DIRETO para resolver o sistema,
        # pois o procedimento descrito aqui ja e iterativo, e isso
        # aumentaria nossas chances de nao convergencia e 
        # custos de processamento --> pode ser o Gauss com pivotamento
        # delta = np.linalg.solve(J, -F)  # ATENCAO: resolvemos o sistema para -F
        delta = gaussian_elim(J, -F)
        ## Atualizamos x pela soma do x atual e o 
        # vetor solucao do sistema da Jacobiana
        print("delta = ")
        print(delta)
        x = x + delta
        print("x" + str(k) + " = ")
        print(x)

        ## Como criterio de parada, podemos usar o desvio total
        m_delta = delta[0]
        for i in delta:
            if abs(i) > m_delta:
                m_delta = abs(i)

    return x

def solucao_sistema():
    def F(x):
        return np.array(
            [x[0] +x[1] -3,
            x[0]**2 + x[1]**2 -9]
            )
    x = [1, 5] 
    print("solucao sistema:")
    print(fsolve(F, x0=x, xtol=1e-6))

sistemas_nao_lineares_analitical()
solucao_sistema()