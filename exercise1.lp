node1(A) :- edge1(A, B).
node1(B) :- edge1(A, B).

node2(A) :- edge2(A, B).
node2(B) :- edge2(A, B).

% If A is in the first graph and E in the second there might be a mapping A -> E
{maps(A, E)} :- node1(A), node2(E).

% A node in the first graph can only be used once
:- maps(A, E), maps(A, F), E != F.

% All nodes in the first graph must be reached
:- node1(A), not maps(A, _).

% If there is a edge in The first graph there must be one in the second
:- edge1(A, B), maps(A, E), maps(B, F), not edge2(E, F).

% Distance
edge(A, B) :- edge1(A, B).
edge(A, B) :- edge2(A, B).
distance(A, B, 1) :- edge(A, B).
distance(X, Z, D + 1) :- edge(X, Y), distance(Y, Z, D), X != Y.

{minDistance(A, B, D)} :- distance(A, B, D).
:- distance(A, B, _), not minDistance(A, B, _).
:- minDistance(A, B, D1), minDistance(A, B, D2), D1 != D2.
:- minDistance(A, B, D1), distance(A, B, D2), D1 > D2.


% The distance will be preserved in E-f if A-B,   A->E and B->F.
:- preserve(A, B), maps(A, E), maps(B, F), minDistance(A, B, D), not minDistance(E, F, D).