genitor(pam, bob).
genitor(tom, bob).
genitor(tom, liz).

genitor(bob, ana).
genitor(bob, pat).

genitor(liz,bill).

genitor(pat, jim).

mulher(jaq).
mulher(pam).
mulher(liz).
mulher(pat).
mulher(ana).
homem(tom).
homem(bob).
homem(jim).
homem(bill).

pai(X,Y) :- genitor(X,Y), homem(X).
mae(X,Y) :- genitor(X,Y), mulher(X).

avo(AvoX, X) :- genitor(GenitorX, X), genitor(AvoX, GenitorX), homem(AvoX).
avoh(AvohX, X) :- genitor(GenitorX, X), genitor(AvohX, GenitorX), mulher(AvohX).
irmao(X,Y) :- genitor(PaiAmbos, X), genitor(PaiAmbos, Y), X \== Y, homem(X).
irma(X,Y) :- genitor(PaiAmbos, X), genitor(PaiAmbos, Y), X \== Y, mulher(X).
irmaos(X,Y) :- (irmao(X,Y); irma(X,Y)), X \== Y.

ascendente(X,Y) :- genitor(X,Y). %recursão - caso base
ascendente(X,Y) :- genitor(X, Z), ascendente(Z, Y). %recursão - passo recursivo

% problema 1

tio(X,Y) :- homem(X), genitor(GenitorY,Y), irmaos(GenitorY,X).
tia(X,Y) :- mulher(X), genitor(GenitorY,Y), irmaos(GenitorY,X).
primo(X,Y) :- homem(X), genitor(GenitorX, X), genitor(GenitorY, Y), irmaos(GenitorX, GenitorY).
prima(X,Y) :- mulher(X), genitor(GenitorX, X), genitor(GenitorY, Y), irmaos(GenitorX, GenitorY).
primos(X,Y) :- (primo(X,Y); prima(X,Y)), X \== Y.
bisavo(BisavoX,Y) :- genitor(BisavoX, AvoOuAvohX), (avo(AvoOuAvohX,Y);avoh(AvoOuAvohX,Y)), homem(BisavoX).
bisavoh(BisavohX,Y) :- genitor(BisavohX, AvoOuAvohX), (avo(AvoOuAvohX,Y);avoh(AvoOuAvohX,Y)), mulher(BisavohX).
descendente(X,Y) :- ascendente(Y,X).
feliz(X) :- pai(X,_); mae(X,_).

neto(X,Y) :- (avo(Y,X);avoh(Y,X)), homem(X).
neta(X,Y) :- (avo(Y,X);avoh(Y,X)), mulher(X).

% % consultas
tio(X,bill).  % X = bill
tia(X,ana).  % X = liz
primo(bill,ana).  % true.
prima(bill,ana).  % false.
primos(ana,X).  % X = bill
bisavo(tom,X).  % X = jim
bisavoh(X, jim).  % X = ana
descendente(pat, X).  % X = bob ; X = pam ; x = tom; false.
descendente(X, pat).  % X = jim
feliz(pat).  % true.
feliz(bill).  % false.
neto(X, tom).  % X = bill ; true.
neta(pat, X).  % X = tom ; X = pam ; false.