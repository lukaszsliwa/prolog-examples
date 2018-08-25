fib(0,1).
fib(1,1).
fib(N,M) :- N>1, N1 is N-1, N2 is N-2, fib(N1,M1), fib(N2,M2), M is M1+M2.

