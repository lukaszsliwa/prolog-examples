app([], Y, Y).
app([X|Xtail], Y, [X|Ztail]) :- app(Xtail, Y, Ztail).

