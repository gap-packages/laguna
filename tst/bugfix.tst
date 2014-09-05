gap> START_TEST("laguna.tst");

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
gap> STOP_TEST( "laguna.tst", 10000 );
