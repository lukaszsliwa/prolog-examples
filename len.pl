len([], 0).
len([_|Xs], C) :- len(Xs, P), C is P+1.
