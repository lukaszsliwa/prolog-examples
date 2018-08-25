wygrana2(L, K, X) :- member(X, L), X >= K.
wygrana2(L, K, X) :- member(X, L), S is K-X, \+wygrana2(L, S, _).
