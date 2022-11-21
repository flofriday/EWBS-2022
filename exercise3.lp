% Expand worksFor
worksFor(A, C) :- worksFor(A, B), worksFor(B, C).

% Expand the assigned
assigned(A, G) :- worksFor(A, B), assigned(B, G).

% Count the groups a person is in
inGroups(A, N) :- person(A, _), N = #count{G: assigned(A, G)}.

% Count the weighted sum of all persons in a group.
group(G) :- assigned(_, G).
groupMinus(G, N) :- group(G), N = #sum{WS: assigned(P, G), person(P, S), inGroups(P, GS), WS = S / GS}.

% Calculate the total minus of the university.
student(A) :- inGroups(A, 0).
universityExpenses(N) :- N = #sum{S: person(E, S), assigned(E, _)}.
universityIncome(N * 100) :- N = #count{A: student(A)}.

universityMinus(N) :- universityExpenses(E), universityIncome(I), N = E - I.