dl_sciezki(X,Y,N) :- krawedz(X,Y), N is 1.
dl_sciezki(X,Y,N) :- krawedz(X,Z), dl_sciezki(Z,Y,N1), N is N1 + 1.
