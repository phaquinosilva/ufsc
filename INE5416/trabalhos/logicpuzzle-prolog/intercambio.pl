% solucao para https://rachacuca.com.br/logica/problemas/feira-de-intercambio/

mochila(amarela).
mochila(azul).
mochila(branca).
mochila(verde).
mochila(vermelha).

nome(bruna).
nome(emily).
nome(fabiana).
nome(luiza).
nome(talita).

pais(australia).
pais(eua).
pais(canada).
pais(inglaterra).
pais(irlanda).

duracao(6).
duracao(9).
duracao(12).
duracao(15).
duracao(18).

parcelas(6).
parcelas(12).
parcelas(18).
parcelas(24).
parcelas(30).

idade(21).
idade(24).
idade(27).
idade(30).
idade(33).

% X está à ao lado de Y
aoLado(X,Y,Lista) :- nextto(X,Y,Lista);nextto(Y,X,Lista).

% X está imediatamente à esquerda de Y
imEsquerda(X,Y,Lista) :- nextto(X,Y,Lista).

% X está imediatamente à esquerda de Y
imDireita(X,Y,Lista) :- nextto(Y,X,Lista).

% X está à esquerda de Y (em qualquer posição à esquerda)
aEsquerda(X,Y,Lista) :- nth0(IndexX,Lista,X), 
                        nth0(IndexY,Lista,Y), 
                        IndexX < IndexY.
                        
% X está à direita de Y (em qualquer posição à direita)
aDireita(X,Y,Lista) :- aEsquerda(Y,X,Lista). 

% X está no canto se ele é o primeiro ou o último da lista
noCanto(X,Lista) :- last(Lista,X).
noCanto(X,[X|_]).

todosDiferentes([]).
todosDiferentes([H|T]) :- not(member(H,T)), todosDiferentes(T).

solucao(ListaSolucao) :- 

    ListaSolucao = [
        estudante(Mochila1,Nome1,Pais1,Duracao1,Parcelas1,Idade1),
        estudante(Mochila2,Nome2,Pais2,Duracao2,Parcelas2,Idade2),
        estudante(Mochila3,Nome3,Pais3,Duracao3,Parcelas3,Idade3),
        estudante(Mochila4,Nome4,Pais4,Duracao4,Parcelas4,Idade4),
        estudante(Mochila5,Nome5,Pais5,Duracao5,Parcelas5,Idade5)
    ],
    
    % A estudante de mochila Verde está ao lado da estudante de 30 anos.
    aoLado(estudante(verde,_,_,_,_,_), estudante(_,_,_,_,_,30), ListaSolucao),

    % A dona da mochila Azul está em algum lugar entre a Bruna e a estudante de 24 anos, nessa ordem.
    aDireita(estudante(azul,_,_,_,_,_), estudante(_,bruna,_,_,_,_), ListaSolucao),
    aEsquerda(estudante(azul,_,_,_,_,_), estudante(_,_,_,_,_,24), ListaSolucao),

    % Em uma das pontas está a estudante que vai parcelar o intercâmbio em 2 anos e meio.
    noCanto(estudante(_,_,_,_,30,_), ListaSolucao),

    % A dona da mochila Amarela está em algum lugar à esquerda de quem vai fazer um intercâmbio de 6 meses.
    aEsquerda(estudante(amarela,_,_,_,_,_), estudante(_,_,_,6,_,_), ListaSolucao),

    % Fabiana é a estudante mais velha.
    member(estudante(_,fabiana,_,_,_,33), ListaSolucao),

    % Luiza está exatamente à esquerda da estudante de 24 anos.
    imEsquerda(estudante(_,luiza,_,_,_,_), estudante(_,_,_,_,_,24), ListaSolucao),

    % Quem vai para o Canadá está em algum lugar à direita de quem tem a mochila Verde.
    aDireita(estudante(_,_,canada,_,_,_), estudante(verde,_,_,_,_,_), ListaSolucao),

    % A estudante que vai para a Austrália está exatamente à esquerda da estudante de mochila Amarela.
    imEsquerda(estudante(_,_,australia,_,_,_), estudante(amarela,_,_,_,_,_), ListaSolucao),

    % A dona da mochila Azul está ao lado de quem vai pagar o intercâmbio em 24 parcelas.
    aoLado(estudante(azul,_,_,_,_,_), estudante(_,_,_,_,24,_), ListaSolucao),

    % Quem vai fazer um intercâmbio de 15 meses está em algum lugar à direita da estudante de mochila Verde.
    aDireita(estudante(_,_,_,15,_,_), estudante(verde,_,_,_,_,_), ListaSolucao),

    % A estudante mais nova está na segunda posição.
    Idade2 = 21,

    % A estudante de mochila Azul está exatamente à esquerda da estudante que vai fazer um intercâmbio de 18 meses.
    imEsquerda(estudante(azul,_,_,_,_,_), estudante(_,_,_,18,_,_), ListaSolucao),

    % Quem vai para a Inglaterra vai parcelar o intercâmbio em 30 vezes.
    member(estudante(_,_,inglaterra,_,30,_), ListaSolucao),

    % A dona da mochila Verde está ao lado de quem vai parcelar os gastos em 1 ano e meio.
    aoLado(estudante(verde,_,_,_,_,_), estudante(_,_,_,_,18,_), ListaSolucao),

    % A estudante que vai fazer um intercâmbio de 9 meses está com a mochila Branca.
    member(estudante(branca,_,_,9,_,_), ListaSolucao),

    % Em uma das pontas está a estudante que vai parcelar o intercâmbio em 6 parcelas.
    noCanto(estudante(_,_,_,_,6,_), ListaSolucao),

    % A estudante de 33 anos está em algum lugar à direita da estudante de mochila Verde.
    aDireita(estudante(_,_,_,_,_,33), estudante(verde,_,_,_,_,_), ListaSolucao),

    % Quem vai fazer um intercâmbio de 1 ano está na segunda posição.
    Duracao2 = 12,

    % A estudante de mochila Azul está em algum lugar à esquerda de quem vai pagar o intercâmbio em 18 vezes.
    aEsquerda(estudante(azul,_,_,_,_,_), estudante(_,_,_,_,18,_), ListaSolucao),

    % Quem vai para a Irlanda está em algum lugar entre quem vai para os Estados Unidos e quem vai para a Austrália, nessa ordem.
    aDireita(estudante(_,_,irlanda,_,_,_), estudante(_,_,eua,_,_,_), ListaSolucao),
    aEsquerda(estudante(_,_,irlanda,_,_,_), estudante(_,_,australia,_,_,_), ListaSolucao),

    % Emily está exatamente à direita da estudante de mochila Verde.
    imDireita(estudante(_,emily,_,_,_,_), estudante(verde,_,_,_,_,_), ListaSolucao),

    % Testa as possibilidades...
    mochila(Mochila1), mochila(Mochila2), mochila(Mochila3), mochila(Mochila4), mochila(Mochila5), 
    todosDiferentes([Mochila1, Mochila2, Mochila3, Mochila4, Mochila5]),

    nome(Nome1), nome(Nome2), nome(Nome3), nome(Nome4), nome(Nome5), 
    todosDiferentes([Nome1, Nome2, Nome3, Nome4, Nome5]),

    pais(Pais1), pais(Pais2), pais(Pais3), pais(Pais4), pais(Pais5),
    todosDiferentes([Pais1, Pais2, Pais3, Pais4, Pais5]),

    duracao(Duracao1), duracao(Duracao2), duracao(Duracao3), duracao(Duracao4), duracao(Duracao5),  
    todosDiferentes([Duracao1, Duracao2, Duracao3, Duracao4, Duracao5]),

    parcelas(Parcelas1), parcelas(Parcelas2), parcelas(Parcelas3), parcelas(Parcelas4), parcelas(Parcelas5),
    todosDiferentes([Parcelas1, Parcelas2, Parcelas3, Parcelas4, Parcelas5]),

    idade(Idade1), idade(Idade2), idade(Idade3), idade(Idade4), idade(Idade5),
    todosDiferentes([Idade1, Idade2, Idade3, Idade4, Idade5]).