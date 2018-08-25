wygrana(L, K, X) :- member(X, L), X >= K.
wygrana(L, K, X) :- member(X, L), S is K-X, \+wygrana(L, S, _).

gra(L, K) :- 
    write('Podaj liczbe:'),
     read(X),
     member(X, L),
     Z is K-X,
     write('Aktualna wartosc to: '),
     writeln(Z),
    sprawdz(Z, 'Uzytkownik wygral.'),
     (wygrana(L, Z, Y) ; member(Y, L)),!,
     write('Komputer wybral: '), writeln(Y), 
     S is Z-Y,
     write('Aktualna wartosc to: '), writeln(S),
    sprawdz(S, 'Komputer wygral.'),
    gra(L, S).

sprawdz(Z, K) :- Z =< 0, writeln(K), false.
sprawdz(Z, _) :- Z > 0, true.

