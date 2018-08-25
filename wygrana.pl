wygrana(L, K) :- member(X, L), X >= K.
wygrana(L, K) :- member(X, L), S is K-X, \+wygrana(L, S).
