gap> START_TEST("laguna.tst");
gap> List([1..5],i->IdGroup(PcNormalizedUnitGroup(GroupRing(GF(2),SmallGroup(8,i)))));
[ [ 128, 1601 ], [ 128, 2319 ], [ 128, 170 ], [ 128, 178 ], [ 128, 2328 ] ]
gap> G:=SmallGroup(32,6);
<pc group of size 32 with 5 generators>
gap> KG:=GroupRing(GF(2),G);               
<algebra-with-one over GF(2), with 5 generators>
gap> V:=PcNormalizedUnitGroup(KG);
<pc group of size 2147483648 with 31 generators>
gap> NilpotencyClassOfGroup(V);
4
gap> D:=DerivedSubgroup(G);
Group([ f3, f5 ])
gap> S:=StandardWreathProduct(CyclicGroup(2),D);;
gap> NilpotencyClassOfGroup(S);
3
gap> STOP_TEST( "laguna.tst", 10000 );
