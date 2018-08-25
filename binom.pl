:- dynamic binom/3.

binom(_, 0, 1).
binom(N, N, 1).
binom(N, K, V) :- N1 is N-1, K1 is K-1, binom(N1,K1, V1), binom(N1, K, V2), V is V1+V2, asserta(binom(N, K, V)), !.

binom2(N, K, V) :- N1 is N-K+1, fac(N1, N, 1, A), fac(1, K, 1, B), V is A/B,!.
fac(N1, N2, N, W) :- N1 >= N2, W is N * N2.
fac(N1, N2, Ws, W) :- N1 < N2, N is N1+1, W1 is N1 * Ws, fac(N, N2, W1, W),!.


