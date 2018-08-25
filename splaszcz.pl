splaszcz(Xs,Ys) :- splaszcz(Xs,[],Ys).

splaszcz([X|Xs],As,Ys) :- splaszcz(Xs,As,As1), splaszcz(X,As1,Ys).
splaszcz(X,As,[X|As]) :- integer(X).
splaszcz(X,As,[X|As]) :- atom(X), X\=[].
splaszcz([],Ys,Ys).

