eight_queens(P) :-
     L = [1,2,3,4,5,6,7,8],
     permutation(L, P), 
     combination(L, P, S, D),
     all_diff(S),
     all_diff(D).

combination([],[],[],[]).
combination([X1|X], [Y1|Y], [S1|S], [D1|D]) :-
     S1 is X1+Y1,
     D1 is X1-Y1,
     combination(X, Y, S, D).

all_diff([_]).
all_diff([X|Y]) :-
     \+member(X, Y),
     all_diff(Y).

