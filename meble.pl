/*assert(mebel(1, 1, 3, 2)).
assert(mebel(3, 3, 4, 5)).*/

/* 
  okresla poprawnosc wspolrzednych, czyli daje True gdy wspolrzedne 
  naleza do wymiarow pokoju
*/
poprawne_wspolrzedne(X, Y) :- X >= 1, X =< 4, Y >= 1, Y =< 5.

przesun_mebel(X1, Y1, X2, Y2) :- X1 = X2, Y1 = Y2,!.
przesun_mebel(X1, Y1, X2, Y2) :-
  mebel(X1, Y1, A, B),
  assert(odwiedzone(X1, Y1)),
  (
    (
      X1n is X1-A,
      poprawne_wspolrzedne(X1n, Y1),
      \+odwiedzone(X1n, Y1),
      assert(mebel(X1n, Y1, A, B)),
      retract(mebel(X1, Y1, A, B)),
      przesun_mebel(X1n, Y1, X2, Y2)
    ) ;
    (
      Y1n is Y1-B,
      poprawne_wspolrzedne(X1, Y1n),
      \+odwiedzone(X1, Y1n),
      assert(mebel(X1, Y1n, A, B)),
      retract(mebel(X1, Y1, A, B)),
      przesun_mebel(X1, Y1n, X2, Y2)
    ) ;
    (
      X1m is X1+A,
      poprawne_wspolrzedne(X1m, Y1),
      \+odwiedzone(X1m, Y1),
      assert(mebel(X1m, Y1, A, B)),
      retract(mebel(X1, Y1, A, B)),
      przesun_mebel(X1m, Y1, X2, Y2)
    ) ;
    (
      Y1m is Y1+B,
      poprawne_wspolrzedne(X1, Y1m),
      \+odwiedzone(X1, Y1m),
      assert(mebel(X1, Y1m, A, B)),
      retract(mebel(X1, Y1, A, B)),
      przesun_mebel(X1, Y1m, X2, Y2)
    )
  ).

