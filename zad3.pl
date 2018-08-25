% lukasz.sliwa@gmail.com

robot(X,[],X).
robot([X,Y,K], [idz,B|C], W) :- 
  ruch([X,Y,K], [B|C], W).
robot([X,Y,K], [skrec,lewo|C], W) :- 
  lewo(K,Q), robot([X,Y,Q], C, W).
robot([X,Y,K], [skrec,prawo|C], W) :- 
  prawo(K,Q), robot([X,Y,Q], C, W).

ruch([X,Y,n], [A|C], W) :- 
  YY is Y + A, robot([X,YY,n],C,W).
ruch([X,Y,e], [A|C], W) :- 
  XX is X + A, robot([XX,Y,e],C,W).
ruch([X,Y,s], [A|C], W) :- 
  YY is Y - A, robot([X,YY,s],C,W).
ruch([X,Y,w], [A|C], W) :- 
  XX is X - A, robot([XX,Y,w],C,W).

prawo(n, e).
prawo(e, s).
prawo(s, w).
prawo(w, n).

lewo(X,Y) :- prawo(X,Z), prawo(Z,W), prawo(W,Y).

