b2d(b(0), 0).
b2d(b(1), 1).
b2d(b(X,Y), N) :- B is N mod 2, Y = B, M is N//2, b2d(X, M).

