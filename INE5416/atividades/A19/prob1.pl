
horario(2000).
horario(2030).
horario(2100).
horario(2130).

destino(ba).
destino(mt).
destino(mg).
destino(pa).

mala(azul).
mala(preta).
mala(verde).
mala(vermelha).

passageiro(cicero).
passageiro(gustavo).
passageiro(vitor).
passageiro(william).

todosDiferentes([]).
todosDiferentes([H|T]) :- not(member(H,T)), todosDiferentes(T).

meiaHoraAntes(X,Y,Lista) :- nextto(X,Y,Lista).
meiaHoraDepois(X,Y,Lista) :- nextto(Y,X,Lista).

% X está à esquerda de Y (em qualquer posição à esquerda)
maisCedo(X,Y,Lista) :- nth0(IndexX,Lista,X), 
                        nth0(IndexY,Lista,Y), 
                        IndexX < IndexY.
                        
% X está à direita de Y (em qualquer posição à direita)
maisTarde(X,Y,Lista) :- maisCedo(Y,X,Lista). 

solucao(ListaSolucao) :-

    ListaSolucao = [
        % colocando os horarios em ordem crescente aqui, simplificamos algumas operações
        viaj(Passageiro1,2000,Destino1,Mala1),
        viaj(Passageiro2,2030,Destino2,Mala2),
        viaj(Passageiro3,2100,Destino3,Mala3),
        viaj(Passageiro4,2130,Destino4,Mala4)
    ],
    % 1
    (
        member(viaj(william,_,mg,_),ListaSolucao);
        member(viaj(william,_,_,preta),ListaSolucao)
    ),
    % 3
    member(viaj(cicero,_,mg,_),ListaSolucao),
    % 2
    % member(viaj(_,Hverde,_,verde),ListaSolucao),
    % member(viaj(_,Hba,ba,_),ListaSolucao),
    % Dif2 = Hba - Hverde, (Dif2 =:= 30 ; Dif2 =:= 70),
    meiaHoraAntes(viaj(_,_,_,verde),viaj(_,_,ba,_),ListaSolucao),
    % 4
    % member(viaj(_,Hmg,mg,_),ListaSolucao),
    % member(viaj(_,Hverm,_,vermelha),ListaSolucao),
    % Hmg < Hverm,
    maisCedo(viaj(_,_,mg,_),viaj(_,_,_,vermelha),ListaSolucao),
    % 5
    % member(viaj(_,Hpre,_,preta),ListaSolucao),
    % member(viaj(_,Hpa,pa,_),ListaSolucao),
    % Dif5 = Hpre - Hpa, (Dif5 =:= 30 ; Dif5 =:= 70),
    meiaHoraDepois(viaj(_,_,_,preta),viaj(_,_,pa,_),ListaSolucao),
    % 6
    % member(viaj(willian,Hw,_,_),ListaSolucao),
    % member(viaj(_,Ha,_,azul),ListaSolucao),
    % Hw < Ha,
    maisCedo(viaj(william,_,_,_),viaj(_,_,_,azul),ListaSolucao),
    % 7
    % member(viaj(vitor,Hv,_,_),ListaSolucao),
    % member(viaj(_,Hpa,pa,_),ListaSolucao),
    % Hv > Hpa,
    maisTarde(viaj(vitor,_,_,_),viaj(_,_,pa,_),ListaSolucao),
    % Testes valores...
    passageiro(Passageiro1), passageiro(Passageiro2), passageiro(Passageiro3), passageiro(Passageiro4),
    todosDiferentes([Passageiro1,Passageiro2,Passageiro3,Passageiro4]),
    mala(Mala1), mala(Mala2), mala(Mala3), mala(Mala4),
    todosDiferentes([Mala1,Mala2,Mala3,Mala4]),
    destino(Destino1), destino(Destino2), destino(Destino3), destino(Destino4),
    todosDiferentes([Destino1,Destino2,Destino3,Destino4]).
