kid(keenan).
kid(cas).
mother(sarah, keenan).
mother(sarah, cas).
sibling(Y,Z) :- mother(X, Y), mother (X, Z), not(Y == Z).
parent(X,Y) :- mother(X,Y).
grandparent(X, Z) :- mother(X,Y), mother(Y, Z).
cousin(Y, Z) :- parent(W, Y), parent(X, Z), sibling(W,X).

