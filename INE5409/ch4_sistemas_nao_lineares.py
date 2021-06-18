# numpy nao tem metodo pra lidar com isso os nao lineares
# entao poderiamos usar scipy, quem tem o metodo fsolve no modulo optimize
import numpy as np
import math

## METODO DE RESOLUCAO SISTEMAS NAO LINEARES - aula 1 - jacobiana analitica
# recomendo olhar pra entender como se faz
def sistemas_nao_lineares_analitical():

    ## a ideia e linearizar o sistema, para podermos utilizar
    ## os metodos de resolucao de sistemas lineares
    erro = 1e-6
    x = np.array([1, -1])
    k = 0
    desvio = 1
    while (desvio > erro):
        k += 1
        #print(x)
        #print(k)
        ## Defino a matriz Jacobiana analitica a partir do meu sistema nao linear
        # Alternativamente, podemos fazer isso com metodos numericos
        J = np.array(
            [[np.exp(x[0]), 1],
            [2*x[0], 2*x[1]]]
            )

        ## Agora temos um sistema linearizado:
        # -->  J * delta = - F  <-- # 

        ## Neste EXEMPLO, nosso sistema e:
        # { e^x1 + x2 = 1
        # { x1^2 + x2^2 = 4
        # Entao, nosso vetor F e definido como:
        F = np.array(
            [(np.exp(x[0]) + x[1] -1),
            (x[0]**2 + x[1]**2 - 4)]
            )

        ## Chamamos um METODO DIRETO para resolver o sistema,
        # pois o procedimento descrito aqui ja e iterativo, e isso
        # aumentaria nossas chances de nao convergencia e 
        # custos de processamento --> pode ser o Gauss com pivotamento
        delta = np.linalg.solve(J, -F)  # ATENCAO: resolvemos o sistema para -F
        
        ## Atualizamos x pela soma do x atual e o 
        # vetor solucao do sistema da Jacobiana
        x = x + delta

        ## Como criterio de parada, podemos usar o desvio total
        desvio = np.linalg.norm(delta, ord=2)
    print(x)
    return x

## METODO DE RESOLUCAO SISTEMAS NAO LINEARES - aula 2 - jacobiana numerica
## OBS: ela chama esse aqui de Newton/Simulacao
def sistemas_nao_lineares_numeric_ex1():
    def f1(x):
        return np.exp(x[0]) + x[1] -1
            
    def f2(x):
        return x[0]**2 + x[1]**2 - 4

    erro = 1e-6
    x = np.array([1, -1])
    k = 0
    desvio = 1
    h = 0.001 # utilizaremos pra calcular derivada numerica

    while (desvio > erro):
        k += 1
        F = np.array(
            [f1(x), f2(x)]
        )

        J = np.array(
            [[(f1([x[0] + h, x[1]]) - F[0])/h, (f1([x[0], x[1] + h]) - F[0])/h],
            [(f2([x[0] + h, x[1]]) - F[1])/h, (f2([x[0], x[1] + h]) - F[1])/h]]
            )
        
        delta = np.linalg.solve(J, -F)

        x = x + delta

        desvio = np.linalg.norm(delta, ord=2)
    print(x, k, delta)

def sistemas_nao_lineares_numeric_ex2():
    def f1(x):
        return x[0]*x[1] - 1
            
    def f2(x):
        return x[0] - np.exp(x[1]) - 0

    erro = 1e-5
    x = np.array([1, 1])
    k = 0
    desvio = 1
    h = 0.1 # utilizaremos pra calcular derivada numerica

    while (desvio > erro):
        k += 1
        F = np.array(
            [f1(x), f2(x)]
        )

        J = np.array(
            [[(f1([x[0] + h, x[1]]) - F[0])/h, (f1([x[0], x[1] + h]) - F[0])/h],
            [(f2([x[0] + h, x[1]]) - F[1])/h, (f2([x[0], x[1] + h]) - F[1])/h]]
            )
        
        delta = np.linalg.solve(J, -F)

        x = x + delta

        desvio = np.linalg.norm(delta, ord=2)
    print(x, k, desvio)

#### implementando um metodo mais reaproveitavel
def non_linear_newton(F, J, x, eps):
    # F: matriz de funcoes do sistema
    # J: matriz jacobiana das funcoes
    # x: chute inicial
    # eps: precisao esperada
    F_value = F(x)
    F_norm = np.linalg.norm(F_value, ord=2)
    k = 0
    while abs(F_norm) > eps and k < 100:
        delta = np.linalg.solve(J(x), -F_value)
        x = x + delta
        F_value = F(x)
        F_norm = np.linalg.norm(F_value, ord=2)
        k += 1
    # checa se ao fim do loop o sistema convergiu
    if abs(F_norm) > eps:
        k = -1
    return x, k

# Como utilizar a funcao acima pra calcular sistemas nao lineares
def exemplo1():
    ##PRIMEIRO VOCE CRIA UMA FUNCAO F(X) NESSE ESTILO
    def F(x):
        ## cada posicao do array e uma fn(x)
        return np.array(
            [np.exp(x[0]) + x[1] - 1,
            x[0]**2 + x[1]**2 - 4]
            )

    ## DEPOIS VOCE CRIA O JACOBIANO, UMA FUNCAO J(X)
    def J(x):
        # Aqui cada posicao da matriz e a derivada parcial fn(x) para todo x do vetor X
        """
        OBS: Da pra criar o array direto com as derivadas analiticas ou chamar algum metodo
        numerico pra calcular o valor da derivada em cada posicao durante o funcionamento
        do metodo. O numpy tem alguns metodos de derivacao numerica, e o sympi tem metodos
        simbolicos. Alem disso, o sympy tem um metodo que retorna a matriz jacobiana, o que
        é uma boa alternativa, mas talvez algum trabalho de integrar os dois seja necessario
        (ou nao, ja que scipy existe)
        """
        return np.array(
            [[np.exp(x[0]), 1],
            [2*x[0], 2* x[1]]]
            )
    
    x, n = non_linear_newton(F, J, x=np.array([1, -1]), eps =1e-4)
    print(x, n)

## POSSIVEL TO DO:
# Automatizar criacao da matriz jacobiana baseado no array de funcoes
def gen_jacobian(F):
    pass