#show groupMinus/2.
#show universityMinus/1.
% Model: universityMinus(950) groupMinus(g1,1150)

person(a, 100).
person(b, 150).
person(c, 1000).
person(d, 50).

worksFor(b, a).
worksFor(c, b).

assigned(b, g1).