sciezka_dl(X,Y,N) :- N=1, krawedz(X,Y).
sciezka_dl(X,Y,N) :- N>1, N1 is N-1, krawedz(X,Z), sciezka_dl(Z,Y,N1).
