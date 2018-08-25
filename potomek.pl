potomek(X,Y) :- dziecko(X,Y).
potomek(X,Y) :- dziecko(X,Z), potomek(Z,Y).
