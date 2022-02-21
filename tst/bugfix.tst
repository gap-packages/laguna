gap> START_TEST("laguna.tst");
gap> SetInfoLevel(LAGInfo,0);

# 2013/05/27 (Reported by Mohamed Barakat)
# This calculation triggered a break loop.
gap> AugmentationIdeal( GroupRing(GaloisField(2),SL(2,2)) );
<two-sided ideal in <algebra-with-one over GF(2), with 2 generators>, 
  (dimension 5)>

# 2013/06/21 (Reported by Danjoseph Quijada)
# This wrongly reported 'true' because Augmentation for a zero element of 
# the group rings returned an integer, not a zero of the underlying field. 
gap> FG:=GroupRing(GF(2),CyclicGroup(2));;
gap> IsUnit(FG,Zero(FG));
false

# 2014/11/11 (Reported by Urban Jezernik)
gap> g := SmallGroup(27,1);;
gap> rng := GroupRing(GF(3), g);;
gap> u := PcNormalizedUnitGroup(rng);;
gap> emb := Embedding(g, rng);;
gap> f := NaturalBijectionToPcNormalizedUnitGroup(rng);;
gap> (g.1^emb)^f = ((g.1^2)^emb)^f; # were equal, but f should be an isomorphism
false
gap> (g.1^emb)^f; ((g.1^2)^emb)^f;
f1
f1^2

# 2019/02/12 (Reported by Gábor Horváth)
gap> fg := GroupRing(GF(4), DihedralGroup(8));;
gap> x := (Z(2)^0)*fg.2*fg.3+(Z(2^2))*fg.1*fg.2*fg.3;;
gap> Inverse(x);
(Z(2^2)^2)*f2+(Z(2)^0)*f1*f2*f3
gap> IsOne(x * Inverse(x));
true

# 2022-02-21: call to MaximalSubgroupClassReps used to fail
# see https://github.com/gap-system/gap/issues/3599
gap> R:= GroupRing(GF(2), SymmetricGroup(3));
<algebra-with-one over GF(2), with 2 generators>
gap> UR:= Units(R);
<group with 3 generators>
gap> max:= MaximalSubgroupClassReps(UR);
[ <group of size 6 with 2 generators>, <group of size 6 with 2 generators>, 
  <group of size 6 with 2 generators>, <group of size 4 with 2 generators> ]

#
gap> SetInfoLevel(LAGInfo,1);
gap> STOP_TEST( "laguna.tst", 10000 );
