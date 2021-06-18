
%% problema 3
% divisivel(N,K) :- mod(N,K) =:= 0.
% divisivel(6,3).  % true.

%% problema 4
triangulo(X,Y,Z) :- abs(X - Y) < Z, Z < (X + Y).
% triangulo(4,8,9).  % true.
% triangulo(10,5,4).  % false.

%% problema 11
fib(0,0).
fib(1,1).
fib(N,K) :- N1 is N - 1, N2 is N - 2, fib(N1,K1), fib(N2,K2), K is K1 + K2.
% fib(7,K).  % K = 13.
% fib(9,K).  % K = 34.

%% problema 15
euclid(X,0,Z) :- Z is X.
euclid(X,Y,Z) :- Y > X, euclid(Y,X,Z).
euclid(X,Y,Z) :- XmodY is X mod Y, euclid(Y,XmodY, Z).
mdc(X,Y,Resultado) :- euclid(X,Y,Resultado).
% mdc(348,156,X).  % X = 12.

%% problema 16
mdc(X,Y,Z,Resultado) :- mdc(X,Y,MDCxy), mdc(MDCxy,Z,Resultado).
% mdc(30,36,72,X).  % X = 12.

%% problema 17
mmc(X,Y,Resultado) :- mdc(X,Y,MDC), Resultado is X*Y // MDC.
% mmc(21,6,K).  % K = 42.


%% problema 18 -- nao funcionou.
coprimos(X,Y) :- mdc(X,Y,K), K =:= 1; !.

%% problema 20 -- solução do Gustavo Kundlatsch

divisivel(X,Y) :- 0 is X mod Y, !.

divisivel(X,Y) :- X > Y+1, divisivel(X, Y+1).

primo(2) :- true, !.
primo(X) :- X < 2, !, false.
primo(X) :- not(divisivel(X,2)).
