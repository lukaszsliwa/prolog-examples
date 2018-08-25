% Lukasz Sliwa
% lukasz.sliwa@gmail.com
pierw(A,B,C,X) :- delta(A,B,C,D), D = 0.0, X is -B/(2*A).
pierw(A,B,C,X) :- delta(A,B,C,D), D > 0.0, E is sqrt(D), X is (-B+E)/(2*A).
pierw(A,B,C,X) :- delta(A,B,C,D), D > 0.0, E is sqrt(D), X is (-B-E)/(2*A).
