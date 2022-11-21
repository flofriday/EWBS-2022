#show groupMinus/2.
#show universityMinus/1.
% Model: universityMinus(1600) groupMinus(g,1600)

person(a, 100).
person(b, 200).
person(c, 1000).
person(d, 300).

worksFor(c, d).
worksFor(c, a).
worksFor(a, b).
worksFor(d, b).

assigned(b, g).