
sciezka2(A,B,idz(A,B)) :- krawedz(A,B).
sciezka2(A,C,idz(A,B,T)) :- krawedz(A,B), sciezka2(B,C,T).

