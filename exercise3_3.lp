#show groupMinus/2.
#show universityMinus/1.
% Model: universityMinus(1000) groupMinus(g1,600) groupMinus(g2,600)

person(a, 100).
person(b, 200).
person(c, 1000).
person(d, 50).

worksFor(b, a).
worksFor(c, b).

assigned(b, g1).
assigned(b, g2).