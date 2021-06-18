% 1
posicao(X,[X|_],0) :- !.
posicao(X,[_|T],P) :- posicao(X,T,I), P is I + 1.
/*
    ?- posicao(1,[1,2,3,4],P).
    P = 0.

    ?- posicao(4,[1,2,3,4],P).
    P = 3.
*/

% 2
inserirElementoPosicao(X,0,L1,[X|L1]) :- !.
inserirElementoPosicao(X,I,[H|T],[H|L2]) :- I2 is I - 1, inserirElementoPosicao(X,I2,T,L2).
/*
    ?- inserirElementoPosicao(4,2,[1,2,3,4],L2).
    L2 = [1, 2, 4, 3, 4].
*/

% 3
numerosParaPalavras([],[]).
numerosParaPalavras([0|T], ["zero"|P]) :- numerosParaPalavras(T,P).
numerosParaPalavras([1|T], ["um"|P]) :- numerosParaPalavras(T,P).
numerosParaPalavras([2|T], ["dois"|P]) :- numerosParaPalavras(T,P).
numerosParaPalavras([3|T], ["tres"|P]) :- numerosParaPalavras(T,P).
numerosParaPalavras([4|T], ["quatro"|P]) :- numerosParaPalavras(T,P).
numerosParaPalavras([5|T], ["cinco"|P]) :- numerosParaPalavras(T,P).
numerosParaPalavras([6|T], ["seis"|P]) :- numerosParaPalavras(T,P).
numerosParaPalavras([7|T], ["sete"|P]) :- numerosParaPalavras(T,P).
numerosParaPalavras([8|T], ["oito"|P]) :- numerosParaPalavras(T,P).
numerosParaPalavras([9|T], ["nove"|P]) :- numerosParaPalavras(T,P).
/*
    ?- numerosParaPalavras([1,2,3,4],L2).
    L2 = ["um", "dois", "tres", "quatro"].
*/

% 4
soma([],0).
soma([H|T],X) :- soma(T,S), X is H + S.
/*
    ?- soma([1,2,3,4],X).
    X = 10.
*/

% 5
comprimento([],0).
comprimento([_|T],X) :- comprimento(T,L), X is L + 1.
media([],0) :- !.
media(L,X) :- soma(L,S), comprimento(L,K), X is S / K.
/*
    ?- media([1,2,3,4],X).
    X = 2.5.
*/

% 6
menor([],0).
menor([H],H).
menor([H|T],X) :- menor(T,Min), ((H < Min, X is H); X is Min), !.
/*
    ?- menor([2,3,4,1,5],X).
    X = 1.
*/

% 7
concatena([],L,L).
concatena([H|T],L2,[H|LContatenada]) :- concatena(T,L2,LContatenada).

palindrome([]).
palindrome([_]).
palindrome([H|T]) :- concatena(T2,[H], T), palindrome(T2), !.
/*
    ?- palindrome([1,2,3]).
    false.
    ?- palindrome([1,2,3,2,1]).
    true.
*/

% 8

% 9
ocorrencias([],_,0).
ocorrencias([H|T],X,N) :- ocorrencias(T,X,N2), ((X \== H, N is N2); N is N2 + 1), !.
/* 
    ?- ocorrencias([1,2,3,3,3,3,2,1,3],3,N).
    N = 5.
*/

% 10
% 11
% 12
% 13
% 14
% 15
% 16