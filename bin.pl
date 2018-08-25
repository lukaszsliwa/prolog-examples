% Zdefiniowac predykat odczytujacy definicje drzewa binarnego z etykietami i wyswietlajacego to drzewo graficznie
% n(a, n(b,n(d, nil, nil), n(e, nil, nil)), n(c, nil, nil)).

tree(T) :- printtree(T, 0).

printtree(nil, _).
printtree(n(Key, Left, Right), Depth) :- 
  D1 is Depth+1,
  printtree(Left, D1),
    printkey(Key, Depth),
  printtree(Right, D1).

printkey(Key, Depth) :- 
  Depth > 0, !, D1 is Depth-1,
  write('\t'), printkey(Key, D1).
printkey(Key, Depth) :- 
  Depth =< 0, write(Key), write('\n').


