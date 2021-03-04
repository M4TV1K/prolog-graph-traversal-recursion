connection(a, b).
connection(a, c).
connection(a, d).
connection(b, h).
connection(b, c).
connection(d, e).
connection(c, g).
connection(c, e).
connection(e, f).
connection(h, g).
connection(g, f).

connected(X, Y) :- connection(X, Y) ; connection(Y, X).
path([X, Y | T]) :- write(X), write(Y), write(T), nl, connected(X, Y), not(T = []) -> path([Y | T]) ; write(after__), write(X), write(Y), write(T), nl, connected(X, Y).
