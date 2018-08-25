dziadek(X,Y) :- wnuk(Y,X).
dziadek(X) :- dziadek(X,_).
