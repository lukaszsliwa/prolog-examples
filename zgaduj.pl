zgaduj(X,Y) :- X=Y, write('Liczba='), writeln(X).
zgaduj(X,Y) :- X<Y, Z is (X+Y)//2, write('Czy liczba jest wieksza od '), write(Z), write('? '), read(A), sprawdz_odpowiedz(X,Y,Z,A).

sprawdz_odpowiedz(_,Y,Z,A) :- A = 't', Z1 is Z+1, zgaduj(Z1,Y).
sprawdz_odpowiedz(X,_,Z,A) :- A \= 't', zgaduj(X,Z).
