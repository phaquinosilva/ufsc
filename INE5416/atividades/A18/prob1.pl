
distancia(ponto2d(X1,Y1),ponto2d(X2,Y2),D) :-
    Dist is (X1 - X2)**2 + (Y1 - Y2)**2,
    D is sqrt(Dist).

/*
?- distancia(ponto2d(3,4),ponto2d(3,4),D).
D = 0.0.

?- distancia(ponto2d(3,4),ponto2d(3,6),D).
D = 2.0.

?- distancia(ponto2d(3,4),ponto2d(1,6),D).
D = 2.8284271247461903.
*/

colineares(ponto2d(X1,Y1), ponto2d(X2,Y2), ponto2d(X3,Y3)) :-
    Det is ((X1*Y2) + (Y1*X3) + (X2*Y3) - (X3*Y2) - (X1*Y3) - (X2*Y1)),
    Det =:= 0.

/*
?- colineares(ponto2d(1,1),ponto2d(2,2),ponto2d(3,3)).
true.

?- colineares(ponto2d(1,1),ponto2d(555,2),ponto2d(3,66)).
false.
*/

formaTriangulo(P1, P2, P3) :-
    not(colineares(P1,P2,P3)).

/*

?- formaTriangulo(ponto2d(1,1),ponto2d(2,2),ponto2d(3,3)).
false.

?- formaTriangulo(ponto2d(1,1),ponto2d(2,2),ponto2d(3,5)).
true.
*/