#show groupMinus/2.
#show universityMinus/1.
% Model: universityMinus(8600) groupMinus(g0, 7000) groupMinus(g1, 1150) groupMinus(g2, 850)

person(a, 5000).
person(b, 2000).
person(c, 100).
person(e, 100).
person(f, 100).
person(h, 1600).
person(i, 100).
person(j, 700).
person(k, 250).
person(l, 78).
person(m, 42).

assigned(a, g0).
assigned(b, g1).
assigned(h, g2).

%worksFor(b, a).
worksFor(h, a).
%worksFor(c, b).
worksFor(e, b).
worksFor(f, b).
worksFor(h, j).
worksFor(i, h).
worksFor(m, l).