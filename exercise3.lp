% Expand worksFor
worksFor(A, C) :- worksFor(A, B), worksFor(B, C).

% Expand the assigned
assigned(A, G) :- worksFor(A, B), assigned(B, G).

% Count the groups a person is in
inGroups(A, N) :- person(A, _), N = #count{G: assigned(A, G)}.

% Count the weighted sum of all persons in a group.
group(G) :- assigned(_, G).
groupMinus(G, N) :- group(G), N = #sum{WS: assigned(P, G), person(P, S), inGroups(P, GS), WS = S / GS}.