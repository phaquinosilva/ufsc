% Relacao de filmes
%    filme(id, titulo, ano, diretor, nacionalidade).
%
filme(f1, 'Monty Python: O Sentido da Vida', 1983, 'Terry Jones', uk).
filme(f2, 'Edukators', 2004, 'Hans Weingartner', de).
filme(f3, 'Lavoura Arcaica', 2001, 'Luiz Fernando Carvalho', br).
filme(f4, 'Lisbela e o Prisioneira', 2003, 'Guel Arraes', br).
filme(f5, 'Abril despedaçado', 2001, 'Walter Salles', br).
filme(f6, 'Diários de motocicleta', 2004, 'Walter Salles', br).

% Relacao de paises
%     pais(sigla, nome).
%
pais(uk, 'Unided Kingdom').
pais(de, 'Alemanha').
pais(br, 'Brasil').

% Relacao de DVD (a caixa em si)
%     dvd(id do DVD, id do filme, estante).
%
dvd(d1, f1, est1).
dvd(d2, f2, est1).
dvd(d4, f4, est1).
dvd(d3, f3, est2).
dvd(d5, f5, est3).
dvd(d6, f1, est1).
dvd(d7, f2, est4).
dvd(d8, f2, est4).

% Relacao de clientes
%     cliente(cod, nome, telefone).
%
cliente(c1, 'Bob', '333-3112').
cliente(c2, 'Zeca', '245-1099').
cliente(c3, 'Tom', '323-0685').
cliente(c4, 'Bianca', '333-4391').
cliente(c5, 'Alice', '251-7439').
cliente(c6, 'Maria', '212-3271').

% Relacao de locacoes
%     locacao(cod cliente, nro do DVD, data de entrega)
%
locacao(c1, d1, '2005-11-07').
locacao(c1, d2, '2005-11-07').
locacao(c3, d5, '2005-11-09').
locacao(c2, d3, '2005-11-10').
locacao(c3, d3, '2005-11-11').
locacao(c4, d8, '2005-11-12').
locacao(c5, d7, '2005-11-12').
locacao(c6, d6, '2005-11-12').
locacao(c1, d5, '2005-11-13').
locacao(c1, d6, '2005-11-13').
locacao(c6, d2, '2005-11-14').
locacao(c3, d7, '2005-11-14').
locacao(c3, d8, '2005-11-14').
locacao(c5, d1, '2005-11-15').

/*  
(a) findall(T, filme(_,T,2001,_,_),Filmes).
    Filmes = ['Lavoura Arcaica', 'Abril despedaçado'].

(b) findall(T, (filme(_,T,I,_,_),I >= 2001,I =< 2004),Filmes).
    Filmes = ['Edukators', 'Lavoura Arcaica', 'Lisbela e o Prisioneira',
    'Abril despedaçado', 'Diários de motocicleta'].

(c) findall(T, (filme(_,T,_,_,P), pais(P, 'Brasil')), L),sort(L,Lord).
    L = ['Lavoura Arcaica', 'Lisbela e o Prisioneira', 'Abril despedaçado', 'Diários de motocicleta'],
    Lord = ['Abril despedaçado', 'Diários de motocicleta', 'Lavoura Arcaica', 'Lisbela e o Prisioneira'].

(d) findall(T, (filme(_,T,_,_,P), not(pais(P, 'Brasil'))), L),sort(L,Lord).
    L = ['Monty Python: O Sentido da Vida', 'Edukators'],
    Lord = ['Edukators', 'Monty Python: O Sentido da Vida'].

(e) findall(filme(T,D), (filme(_,T,A,D,P), pais(P, 'Alemanha'),A=<2004), L).
    L = [filme('Edukators', 'Hans Weingartner')].

(f) findall(DVD, (dvd(DVD,F,_),filme(F,_,_,_,P),not(pais(P,'Brasil'))),List).
    List = [d1, d2, d6, d7, d8].

(g) findall(DVD,(dvd(DVD,F,est2),filme(F,_,_,_,P),pais(P,'Brasil')),List).
    List = [d3].

(h) findall(Dir,(dvd(_,F,est1),filme(F,_,_,Dir,P)),List),sort(List,ListOrd).
    List = ['Terry Jones', 'Hans Weingartner', 'Guel Arraes', 'Terry Jones'],
    ListOrd = ['Guel Arraes', 'Hans Weingartner', 'Terry Jones'].

(i)
(j)
(k)
(l)
(m)
(n)

(o) bagof(T, Dvd ^ F ^ A ^ Dir ^ P ^ (filme(F,T,A,Dir,P),dvd(Dvd,F,Est)),List).
    Est = est1,
    List = ['Monty Python: O Sentido da Vida', 'Monty Python: O Sentido da Vida', 'Edukators', 'Lisbela e o Prisioneira'] ;
    Est = est2,
    List = ['Lavoura Arcaica'] ;
    Est = est3,
    List = ['Abril despedaçado'] ;
    Est = est4,
    List = ['Edukators', 'Edukators'].

(p)
(q)

(r) setof(T, Cli ^ Dvd ^ Data ^ Tel ^ F ^ Est ^ Ano ^ Dir ^ P ^ (filme(F,T,Ano,Dir,P),dvd(Dvd,F,Est),cliente(Cli,Nome,Tel),locacao(Cli,Dvd,Data)),List).
    Nome = 'Alice',
    List = ['Edukators', 'Monty Python: O Sentido da Vida'] ;
    Nome = 'Bianca',
    List = ['Edukators'] ;
    Nome = 'Bob',
    List = ['Abril despedaçado', 'Edukators', 'Monty Python: O Sentido da Vida'] ;
    Nome = 'Maria',
    List = ['Edukators', 'Monty Python: O Sentido da Vida'] ;
    Nome = 'Tom',
    List = ['Abril despedaçado', 'Edukators', 'Lavoura Arcaica'] ;
    Nome = 'Zeca',
    List = ['Lavoura Arcaica'].

(s)
(t)
(u)
*/

