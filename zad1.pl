% lukasz.sliwa@gmail.com

ab --> a(N), b(N), b(1).
ab --> [].

a(0) --> [].
a(N) --> [a], a(M), { N is M+1 }.

b(0) --> [].
b(N) --> [b], b(M), { N is M+1 }.


