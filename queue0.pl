% queue0 z listami roznicowymi

queue0(I) :- q0(I, B-B).

q0([enq(X)|I], A-[X|B]) :- q0(I, A-B).
q0([deq(X)|I], [X|A]-B) :- q0(I, A-B).
q0([], []-[]).

