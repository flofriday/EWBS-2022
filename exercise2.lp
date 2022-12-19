% Create fields for every tile.
field(X, Y) :- size(N), X = 1..N, Y = 1..N.

% Assign each bishop from bishopCnt a field without duplicates.
{bishopPos(X, Y)} :- field(X, Y).
:- bishopCnt(N), N != #count{X,Y: bishopPos(X, Y)}.

% Calculate from where each tile is attacked from.
% With the count here we ignore if we find more than one bishop in one direction.
attackedFrom(X, Y, upright)     :- field(X, Y), #count{X1, Y1: bishopPos(X1, Y1), X1 > X, Y1 < Y, X1-X = Y-Y1} >= 1.
attackedFrom(X, Y, downright)   :- field(X, Y), #count{X1, Y1: bishopPos(X1, Y1), X1 > X, Y1 > Y, X1-X = Y1-Y} >= 1.
attackedFrom(X, Y, downleft)    :- field(X, Y), #count{X1, Y1: bishopPos(X1, Y1), X1 < X, Y1 > Y, X-X1 = Y1-Y} >= 1.
attackedFrom(X, Y, upleft)      :- field(X, Y), #count{X1, Y1: bishopPos(X1, Y1), X1 < X, Y1 < Y, X-X1 = Y-Y1} >= 1.
% FIXME: I think the problem is that we don't select the diagonale but anythink that
% is in the correct quater and therefore allowing many more solutions than we 
% should.

% Each tile must have at least the specified attacks.
:- attackCnt(X, Y, A), A > #count{D: attackedFrom(X, Y, D)}.