:- dynamic lis_/2.
:- dynamic lengths/2.
:- retractall(lis_(_,_)).
:- retractall(lengths(_,_)).

lis_([],[]).
lis_([H|_], [H]).
lis_([X|Xs], [X, Y|Ys]) :-
    lis_(Xs, [Y|Ys]),
    X < Y,
    asserta(lis_([X|Xs], [X,Y|Ys])).
lis_([_|Xs],LIS) :-
    lis_(Xs, LIS).

% find longest sublist form list of lists
lengths([],[]).
lengths([H|T],[LH|LT]) :-
    length(H,LH),
    lengths(T,LT),
    asserta(lengths([H|T],[LH|LT])).

longest_length(List,Max) :-
    lengths(List,Len),
    max_list(Len, Max).

longest_list(List,Long) :-
    longest_length(List,Max),
    member(Long,List),
    length(Long,Max).

% return LIS length
lis(List,K,LIS) :-
    setof(A, lis_(List,A), P),
    longest_length(P,K),
    longest_list(P,LIS), !.