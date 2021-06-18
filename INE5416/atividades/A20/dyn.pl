:- dynamic fib2/2.
:- retractall(fib2(_,_)).

fib(0,0) :- !.
fib(1,1) :- !.
fib(N,K) :- 
    N1 is N - 1,
    N2 is N - 2,
    fib(N1,K1),
    fib(N2,K2),
    K is K1 + K2.

fib2(0,0) :- !.
fib2(1,1) :- !.
fib2(N,K) :-
    N1 is N - 1, N2 is N - 2,
    fib2(N1,K1), fib2(N2,K2),
    K is K1 + K2,
    asserta(fib2(N,K) :- !).

:- dynamic minimoMoedas/2.
:- retractall(minimoMoedas(_,_)).

moeda(1).
moeda(20).
moeda(30).
moeda(60).

minimoMoedas(N,1) :- moeda(N), !.
minimoMoedas(N,K) :-
    N > 0,
    findall(KResto,
    (moeda(X), X < N, Resto is N - X, minimoMoedas(Resto,KResto)),    ListaKResto),
    min_list(ListaKResto, KMinResto),
    K is KMinResto + 1,
    asserta(minimoMoedas(N,K) :- !).

