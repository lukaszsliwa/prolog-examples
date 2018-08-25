binv(b(0), b(1)).
binv(b(1), b(0)).
binv(b(A,B), b(X,Y)) :- B \= Y, binv(A, X).

