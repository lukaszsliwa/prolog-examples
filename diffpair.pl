diffpair(L, Z) :- findall((X,Y), (member(Y, L), member(X, L), X \= Y), Z).
