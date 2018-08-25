sciezka(X,Y) :- krawedz(X,Y).
sciezka(X,Y) :- krawedz(X,Z), sciezka(Z,Y).
