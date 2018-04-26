# LAGUNA, chapter 4
gap> START_TEST( "laguna04.tst");

# laguna/doc/funct.xml:23-30

gap> IsGroupAlgebra( GroupRing( GF( 2 ), DihedralGroup( 16 ) ) );
true
gap> IsGroupAlgebra( GroupRing( Integers, DihedralGroup( 16 ) ) );
false      

# laguna/doc/funct.xml:53-60

gap> IsFModularGroupAlgebra( GroupRing( GF( 2 ), SymmetricGroup( 6 ) ) );
true
gap> IsFModularGroupAlgebra( GroupRing( GF( 2 ), CyclicGroup( 3 ) ) );
false  

# laguna/doc/funct.xml:83-90

gap> IsPModularGroupAlgebra( GroupRing( GF( 2 ), DihedralGroup( 16 ) ) );
true
gap> IsPModularGroupAlgebra( GroupRing( GF( 2 ), SymmetricGroup( 6 ) ) );
false        

# laguna/doc/funct.xml:109-116

gap> KG := GroupRing( GF ( 2 ), DihedralGroup( 16 ) );
<algebra-with-one over GF(2), with 4 generators>
gap> G := UnderlyingGroup( KG );
<pc group of size 16 with 4 generators>  

# laguna/doc/funct.xml:134-141

gap> KG := GroupRing( GF( 2 ), DihedralGroup( 16 ) );
<algebra-with-one over GF(2), with 4 generators>
gap> UnderlyingRing( KG );
GF(2)     

# laguna/doc/funct.xml:159-166

gap> KG := GroupRing( GF( 2 ), DihedralGroup( 16 ) );
<algebra-with-one over GF(2), with 4 generators>
gap> UnderlyingField( KG );
GF(2)    

# laguna/doc/funct.xml:192-209

# First we create an element x to use in in the series of examples.
# We map the minimal generating system of the group G to its group algebra
# and denote their images as a and b
gap> G:=DihedralGroup(16);; KG:=GroupRing(GF(2),G);;
gap> l := List( MinimalGeneratingSet( G ), g -> g^Embedding( G, KG ) );
[ (Z(2)^0)*f1, (Z(2)^0)*f2 ]
gap> a := l[1]; b := l[2]; e := One( KG ); # we denote the identity by e
(Z(2)^0)*f1
(Z(2)^0)*f2
(Z(2)^0)*<identity> of ...
gap> x := ( e + a ) * ( e + b );
(Z(2)^0)*<identity> of ...+(Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f1*f2
gap> Support( x );
[ <identity> of ..., f1, f2, f1*f2 ]     

# laguna/doc/funct.xml:228-235

gap> x;
(Z(2)^0)*<identity> of ...+(Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f1*f2
gap> CoefficientsBySupport( x );
[ Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0 ]   

# laguna/doc/funct.xml:257-264

gap> x;
(Z(2)^0)*<identity> of ...+(Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f1*f2
gap> TraceOfMagmaRingElement( x );
Z(2)^0        

# laguna/doc/funct.xml:279-286

gap> x;
(Z(2)^0)*<identity> of ...+(Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f1*f2
gap> Length( x );
4     

# laguna/doc/funct.xml:304-311

gap> x;
(Z(2)^0)*<identity> of ...+(Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f1*f2
gap> Augmentation( x );
0*Z(2)     

# laguna/doc/funct.xml:339-347

gap> y := x + a*b^2;
(Z(2)^0)*<identity> of ...+(Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f1*f2+(Z(2)^
0)*f1*f3
gap> PartialAugmentations( KG, y );
[ [ Z(2)^0, 0*Z(2), Z(2)^0, Z(2)^0 ], [ <identity> of ..., f1, f2, f1*f2 ] ]    

# laguna/doc/funct.xml:376-389

gap> x;
(Z(2)^0)*<identity> of ...+(Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f1*f2
gap> Involution( x );
(Z(2)^0)*<identity> of ...+(Z(2)^0)*f1+(Z(2)^0)*f1*f2+(Z(2)^0)*f2*f3*f4
gap> l := List( MinimalGeneratingSet( G ), g -> g^Embedding( G, KG ) );
[ (Z(2)^0)*f1, (Z(2)^0)*f2 ]
gap> List( l, Involution ); # check how involution acts on elements of G
[ (Z(2)^0)*f1, (Z(2)^0)*f2*f3*f4 ]
gap> List( l, g -> g^-1 );
[ (Z(2)^0)*f1, (Z(2)^0)*f2*f3*f4 ]     

# laguna/doc/funct.xml:403-410

gap> IsSymmetric( x );
false
gap> IsSymmetric( x * Involution( x ) );
true     

# laguna/doc/funct.xml:424-433

gap> IsUnitary(x);
false
gap> l:=List(MinimalGeneratingSet(G),g -> g^Embedding(G,KG));
[ (Z(2)^0)*f1, (Z(2)^0)*f2 ]
gap> List(l,IsUnitary); # check that elements of G are unitary
[ true, true ]   

# laguna/doc/funct.xml:462-473

gap> x;
(Z(2)^0)*<identity> of ...+(Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f1*f2
gap> IsUnit( KG, x ); # clearly, is not a unit due to augmentation zero
false
gap> y := One( KG ) + x; # this should give a unit
(Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f1*f2
gap> IsUnit( KG, y );
true       

# laguna/doc/funct.xml:491-502

gap> y;
(Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f1*f2
gap> y^-1;
(Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f3+(Z(2)^0)*f4+(Z(2)^0)*f1*f2+(Z(2)^
0)*f1*f3+(Z(2)^0)*f1*f4+(Z(2)^0)*f2*f4+(Z(2)^0)*f1*f2*f4+(Z(2)^0)*f2*f3*f4+(
Z(2)^0)*f1*f2*f3*f4
gap> y * y^-1;
(Z(2)^0)*<identity> of ...    

# laguna/doc/funct.xml:544-561

gap> G := SmallGroup(32,6);
<pc group of size 32 with 5 generators>
gap> KG := GroupRing( GF(2), G );
<algebra-with-one over GF(2), with 5 generators>
gap> g := MinimalGeneratingSet( G );
[ f1, f2 ]
gap> g[1] in Normalizer( G, Subgroup( G, [g[2]] ) );
false
gap> g[2] in Normalizer( G, Subgroup( G, [g[1]] ) );
false
gap> g := List( g, x -> x^Embedding( G, KG ) );
[ (Z(2)^0)*f1, (Z(2)^0)*f2 ]
gap> BicyclicUnitOfType1(g[1],g[2]) = BicyclicUnitOfType2(g[1],g[2]);
false                                                                       

# laguna/doc/funct.xml:598-608

gap> S := SymmetricGroup( 5 );;
gap> ZS := GroupRing( Integers, S );;
gap> f := Embedding( S, ZS );;
gap> BassCyclicUnit( ZS, (1,3,2,5,4) , 3 );
(1)*()+(-2)*(1,2,4,3,5)+(-2)*(1,3,2,5,4)+(3)*(1,4,5,2,3)+(1)*(1,5,3,4,2)
gap> BassCyclicUnit( (1,3,2,5,4)^f, 3 ); 
(1)*()+(-2)*(1,2,4,3,5)+(-2)*(1,3,2,5,4)+(3)*(1,4,5,2,3)+(1)*(1,5,3,4,2)

# laguna/doc/funct.xml:640-662

gap> F := GF( 2 ); G := SymmetricGroup( 3 ); FG := GroupRing( F, G );
GF(2)
Sym( [ 1 .. 3 ] )
<algebra-with-one over GF(2), with 2 generators>
gap> e := Embedding( G,FG );
<mapping: SymmetricGroup( [ 1 .. 3 ] ) -> AlgebraWithOne( GF(2), ... ) >
gap> x := (1,2)^e; y := (1,3)^e;
(Z(2)^0)*(1,2)
(Z(2)^0)*(1,3)
gap> a := AugmentationHomomorphism( FG );
[ (Z(2)^0)*(1,2,3), (Z(2)^0)*(1,2) ] -> [ Z(2)^0, Z(2)^0 ]
gap> x^a; y^a; ( x + y )^a; # this is slower
Z(2)^0
Z(2)^0
0*Z(2)   
gap> Augmentation(x); Augmentation(y); Augmentation( x + y ); # this is faster
Z(2)^0
Z(2)^0
0*Z(2)   

# laguna/doc/funct.xml:684-692

gap> KG := GroupRing( GF( 2 ), DihedralGroup( 16 ) );
<algebra-with-one over GF(2), with 4 generators>
gap> AugmentationIdeal( KG );
<two-sided ideal in <algebra-with-one over GF(2), with 4 generators>,
  (dimension 15)>

# laguna/doc/funct.xml:712-722

gap> KG := GroupRing( GF( 2 ), DihedralGroup( 16 ) );
<algebra-with-one over GF(2), with 4 generators>
gap> RadicalOfAlgebra( KG );
<two-sided ideal in <algebra-with-one over GF(2), with 4 generators>,
  (dimension 15)>
gap> RadicalOfAlgebra( KG ) = AugmentationIdeal( KG );
true     

# laguna/doc/funct.xml:763-774

gap> KG := GroupRing( GF( 2 ), ElementaryAbelianGroup( 4 ) );
<algebra-with-one over GF(2), with 2 generators>
gap> WeightedBasis( KG );
rec( 
  weightedBasis := [ (Z(2)^0)*<identity> of ...+(Z(2)^0)*f1, 
      (Z(2)^0)*<identity> of ...+(Z(2)^0)*f2, 
      (Z(2)^0)*<identity> of ...+(Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f1*f2 ], 
  weights := [ 1, 1, 2 ] )

# laguna/doc/funct.xml:794-807

gap> KG := GroupRing( GF( 2 ), DihedralGroup( 16 ) );
<algebra-with-one over GF(2), with 4 generators>
gap> AugmentationIdealPowerSeries( KG );
[ <algebra of dimension 15 over GF(2)>, <algebra of dimension 13 over GF(2)>,
  <algebra of dimension 11 over GF(2)>, <algebra of dimension 9 over GF(2)>,
  <algebra of dimension 7 over GF(2)>, <algebra of dimension 5 over GF(2)>,
  <algebra of dimension 3 over GF(2)>, <algebra of dimension 1 over GF(2)>,
  <algebra over GF(2)> ]
gap> Length(last);
9      

# laguna/doc/funct.xml:824-831

gap> KG := GroupRing( GF( 2 ), DihedralGroup( 16 ) );
<algebra-with-one over GF(2), with 4 generators>
gap> AugmentationIdealNilpotencyIndex( KG );
9      

# laguna/doc/funct.xml:846-859

gap> KG := GroupRing( GF( 2 ), DihedralGroup( 16 ) );
<algebra-with-one over GF(2), with 4 generators>
gap> AugmentationIdealOfDerivedSubgroupNilpotencyIndex( KG );
4
gap> D := DerivedSubgroup( UnderlyingGroup( KG ) );
Group([ f3, f4 ])
gap> KD := GroupRing( GF( 2 ), D );
<algebra-with-one over GF(2), with 2 generators>
gap> AugmentationIdealNilpotencyIndex( KD );
4       

# laguna/doc/funct.xml:894-915

gap> KG := GroupRing( GF(2), DihedralGroup(16) );
<algebra-with-one over GF(2), with 4 generators>
gap> G := DihedralGroup(16);
<pc group of size 16 with 4 generators>
gap> KG := GroupRing( GF(2), G );
<algebra-with-one over GF(2), with 4 generators>
gap> D := DerivedSubgroup( G );
Group([ f3, f4 ])
gap> LeftIdealBySubgroup( KG, D );
<two-sided ideal in <algebra-with-one over GF(2), with 4 generators>,
  (dimension 12)>                              
gap> H := Subgroup( G, [ GeneratorsOfGroup(G)[1] ]);
Group([ f1 ])
gap> IsNormal( G, H );
false
gap> LeftIdealBySubgroup( KG, H );
<left ideal in <algebra-with-one over GF(2), with 4 generators>, (dimension 8
 )>

# laguna/doc/funct.xml:944-953

gap> KG := GroupRing( GF( 2 ), DihedralGroup( 16 ) );
<algebra-with-one over GF(2), with 4 generators>
gap> V := NormalizedUnitGroup( KG );
<group of size 32768 with 15 generators>
gap> u := GeneratorsOfGroup( V )[4];
(Z(2)^0)*f3  

# laguna/doc/funct.xml:973-980

gap> W := PcNormalizedUnitGroup( KG );
<pc group of size 32768 with 15 generators>
gap> w := GeneratorsOfGroup( W )[4];
f4       

# laguna/doc/funct.xml:1013-1024

gap> f := NaturalBijectionToPcNormalizedUnitGroup( KG );
MappingByFunction( <group of size 32768 with 15 generators>, <pc group of size\
 32768 with 15 generators>, function( x ) ... end )
gap> u := GeneratorsOfGroup( V )[4];;
gap> u^f;
f4   
gap> GeneratorsOfGroup( V )[4]^f = GeneratorsOfGroup( W )[4];
true      

# laguna/doc/funct.xml:1041-1050

gap> t := NaturalBijectionToNormalizedUnitGroup(KG);;
gap> w := GeneratorsOfGroup(W)[4];;
gap> w^t;
(Z(2)^0)*f3    
gap> GeneratorsOfGroup( W )[4]^t = GeneratorsOfGroup( V )[4];
true     

# laguna/doc/funct.xml:1072-1092

gap> G := DihedralGroup( 16 );
<pc group of size 16 with 4 generators>
gap> KG := GroupRing( GF( 2 ), G );
<algebra-with-one over GF(2), with 4 generators>
gap> V:=PcNormalizedUnitGroup( KG );
<pc group of size 32768 with 15 generators>
gap> ucs := UpperCentralSeries( V );;
gap> f := Embedding( G, V );
[ f1, f2, f3, f4 ] -> [ f1, f2, f4, f8 ]
gap> G1 := Image( f, G ); 
Group([ f1, f2, f4, f8 ])
gap> H := Intersection( ucs[2], G1 ); # compute intersection in V(KG)
Group([ f4, f8, f4*f8 ])
gap> T:=PreImage( f, H );             # find its preimage in G
Group([ f3, f4, f3*f4 ])
gap> IdGroup( T ); 
[ 4, 1 ]

# laguna/doc/funct.xml:1110-1129

gap> U := Units( KG );
#I  LAGUNA package: Computing the unit group ...
<group of size 32768 with 15 generators>
gap> GeneratorsOfGroup( U )[5]; # now elements of U are already in KG
(Z(2)^0)*f1+(Z(2)^0)*f3+(Z(2)^0)*f1*f3
gap> FH := GroupRing( GF(3), SmallGroup(27,3) );
<algebra-with-one over GF(3), with 3 generators>
gap> T := Units( FH );
#I  LAGUNA package: Computing the unit group ...
<group of size 5083731656658 with 27 generators>
gap> x := GeneratorsOfGroup( T )[1];
DirectProductElement( [ Z(3), (Z(3)^0)*<identity> of ... ] )
gap> x in FH;
false
gap> x[1] * x[2] in FH; # how to get the corresponding element of FH
true 

# laguna/doc/funct.xml:1146-1159

gap> W := PcUnits( KG );
<pc group of size 32768 with 15 generators>
gap> GeneratorsOfGroup( W )[5];
f5   
gap> FH := GroupRing( GF(3), SmallGroup(27,3) );
<algebra-with-one over GF(3), with 3 generators>
gap> T := PcUnits(FH);
<group of size 5083731656658 with 27 generators>
gap> x := GeneratorsOfGroup( T )[2];
DirectProductElement( [ Z(3)^0, f1 ] )                      

# laguna/doc/funct.xml:1174-1181

gap> IsGroupOfUnitsOfMagmaRing( NormalizedUnitGroup( KG ) );
true
gap> IsGroupOfUnitsOfMagmaRing( Units( KG ) );
true     

# laguna/doc/funct.xml:1196-1203

gap> IsUnitGroupOfGroupRing( Units( KG ) );
true
gap> IsUnitGroupOfGroupRing( PcUnits( KG ) );
true     

# laguna/doc/funct.xml:1219-1226

gap> IsNormalizedUnitGroupOfGroupRing( NormalizedUnitGroup( KG ) );
true
gap> IsNormalizedUnitGroupOfGroupRing( PcNormalizedUnitGroup( KG ) );
true     

# laguna/doc/funct.xml:1247-1258

gap> UnderlyingGroupRing( Units( KG ) );
<algebra-with-one of dimension 16 over GF(2)>
gap> UnderlyingGroupRing( PcUnits( KG ) );
<algebra-with-one of dimension 16 over GF(2)>
gap> UnderlyingGroupRing( NormalizedUnitGroup( KG ) );
<algebra-with-one of dimension 16 over GF(2)>
gap> UnderlyingGroupRing( PcNormalizedUnitGroup( KG ) );
<algebra-with-one of dimension 16 over GF(2)>

# laguna/doc/funct.xml:1280-1299

gap> KG := GroupRing( GF( 2 ), DihedralGroup( 8 ) );
<algebra-with-one over GF(2), with 3 generators>
gap> U := NormalizedUnitGroup( KG );
<group of size 128 with 7 generators>
gap> HU := UnitarySubgroup( U );
<group with 5 generators>
gap> IdGroup( HU );
[ 64, 261 ]
gap> V := PcNormalizedUnitGroup( KG );
<pc group of size 128 with 7 generators>
gap> HV := UnitarySubgroup( V );
Group([ f1, f2, f5, f6, f7 ])
gap> IdGroup( HV );
[ 64, 261 ]
gap> Image(NaturalBijectionToPcNormalizedUnitGroup( KG ), HU ) = HV;
true

# laguna/doc/funct.xml:1323-1342

gap> KG := GroupRing( GF( 2 ), DihedralGroup( 8 ) );
<algebra-with-one over GF(2), with 3 generators>
gap> U := NormalizedUnitGroup( KG );
<group of size 128 with 7 generators>
gap> BU := BicyclicUnitGroup( U );
<group with 2 generators>
gap> IdGroup( BU );
[ 4, 2 ]
gap> V := PcNormalizedUnitGroup( KG );
<pc group of size 128 with 7 generators>
gap> BV := BicyclicUnitGroup( V );
Group([ f5*f6, f5*f7 ])
gap> IdGroup( BV );
[ 4, 2 ]
gap> Image( NaturalBijectionToPcNormalizedUnitGroup( KG ), BU ) = BV;
true

# laguna/doc/funct.xml:1383-1401

gap> D8 := DihedralGroup( 8 );
<pc group of size 8 with 3 generators>
gap> K := GF(2);
GF(2)
gap> KD8 := GroupRing( GF( 2 ), D8 );
<algebra-with-one over GF(2), with 3 generators>
gap> gb := GroupBases( KD8 );;
gap> Length( gb );
32
gap> Length( gb[1] );
8    
gap> gb[1][1];
(Z(2)^0)*<identity> of ...
gap> ForAll(gb, b -> IdGroup(Group(b))=[8,3]);
true

# laguna/doc/funct.xml:1427-1435

gap> G := SymmetricGroup(3);; FG := GroupRing( GF( 2 ), G );
<algebra-with-one over GF(2), with 2 generators>
gap> L := LieAlgebra( FG );
#I  LAGUNA package: Constructing Lie algebra ...
<Lie algebra over GF(2)>

# laguna/doc/funct.xml:1449-1459

gap> KG := GroupRing( GF(3), DihedralGroup(16) );
<algebra-with-one over GF(3), with 4 generators>
gap> L := LieAlgebra ( KG );
#I  LAGUNA package: Constructing Lie algebra ...
<Lie algebra over GF(3)>
gap> IsLieAlgebraByAssociativeAlgebra( L );
true

# laguna/doc/funct.xml:1475-1487

gap> KG := GroupRing( GF(2), DihedralGroup(16) ); 
<algebra-with-one over GF(2), with 4 generators>
gap> L := LieAlgebra ( KG );
#I  LAGUNA package: Constructing Lie algebra ...
<Lie algebra over GF(2)>
gap> UnderlyingAssociativeAlgebra( L );
<algebra-with-one over GF(2), with 4 generators>
gap> last = KG;
true  

# laguna/doc/funct.xml:1506-1523

gap> F := GF( 2 ); G := SymmetricGroup( 3 ); FG := GroupRing( F, G );
GF(2)
Sym( [ 1 .. 3 ] )
<algebra-with-one over GF(2), with 2 generators>
gap> t := NaturalBijectionToLieAlgebra( FG );; 
#I  LAGUNA package: Constructing Lie algebra ...
gap> a := Random( FG );
(Z(2)^0)*()+(Z(2)^0)*(2,3)+(Z(2)^0)*(1,2)+(Z(2)^0)*(1,2,3)
gap> a * a;                     # product in the associative algebra
(Z(2)^0)*()+(Z(2)^0)*(2,3)+(Z(2)^0)*(1,2)+(Z(2)^0)*(1,2,3)
gap> b := a^t;
LieObject( (Z(2)^0)*()+(Z(2)^0)*(2,3)+(Z(2)^0)*(1,2)+(Z(2)^0)*(1,2,3) )
gap> b * b; # product in the Lie algebra (commutator) - must be zero!
LieObject( <zero> of ... )

# laguna/doc/funct.xml:1535-1547

gap> G := SymmetricGroup(3); FG := GroupRing( GF( 2 ), G );
Sym( [ 1 .. 3 ] )
<algebra-with-one over GF(2), with 2 generators>
gap> L := LieAlgebra( FG );
#I  LAGUNA package: Constructing Lie algebra ...
<Lie algebra over GF(2)>
gap> s := NaturalBijectionToAssociativeAlgebra( L );;
gap> InverseGeneralMapping( s ) = NaturalBijectionToLieAlgebra( FG );
true   

# laguna/doc/funct.xml:1562-1574

gap> F := GF( 2 ); G := SymmetricGroup( 3 ); FG := GroupRing( F, G );
GF(2)
Sym( [ 1 .. 3 ] )
<algebra-with-one over GF(2), with 2 generators>
gap> L := LieAlgebra( FG );
#I  LAGUNA package: Constructing Lie algebra ...
<Lie algebra over GF(2)>
gap> IsLieAlgebraOfGroupRing( L );
true   

# laguna/doc/funct.xml:1592-1606

gap> F := GF( 2 ); G := SymmetricGroup( 3 ); FG := GroupRing( F, G );
GF(2)
Sym( [ 1 .. 3 ] )
<algebra-with-one over GF(2), with 2 generators>
gap> L := LieAlgebra( FG );
#I  LAGUNA package: Constructing Lie algebra ...
<Lie algebra over GF(2)>
gap> UnderlyingGroup( L );
Sym( [ 1 .. 3 ] )
gap> LeftActingDomain( L );
GF(2)   

# laguna/doc/funct.xml:1627-1640

gap> F := GF( 2 ); G := SymmetricGroup( 3 ); FG := GroupRing( F, G );
GF(2)
Sym( [ 1 .. 3 ] )
<algebra-with-one over GF(2), with 2 generators>
gap> L := LieAlgebra( FG );
#I  LAGUNA package: Constructing Lie algebra ...
<Lie algebra over GF(2)>
gap> f := Embedding( G, L );;
gap> (1,2)^f + (1,3)^f;
LieObject( (Z(2)^0)*(1,2)+(Z(2)^0)*(1,3) )   

# laguna/doc/funct.xml:1658-1678

gap> G := SmallGroup( 256, 400 ); FG := GroupRing( GF( 2 ), G ); 
<pc group of size 256 with 8 generators>
<algebra-with-one over GF(2), with 8 generators>
gap> L := LieAlgebra( FG );
#I  LAGUNA package: Constructing Lie algebra ...
<Lie algebra over GF(2)>
gap> C := LieCentre( L );
<Lie algebra of dimension 28 over GF(2)>
gap> D := LieDerivedSubalgebra( L );
#I  LAGUNA package: Computing the Lie derived subalgebra ...
<Lie algebra of dimension 228 over GF(2)>
gap> c := Dimension( C ); d := Dimension( D ); l := Dimension( L );
28
228
256
gap> c + d = l; # This is always the case for Lie algebras of group algebras! 
true

# laguna/doc/funct.xml:1695-1715

gap> G := SmallGroup( 256, 400 ); FG := GroupRing( GF( 2 ), G ); 
<pc group of size 256 with 8 generators>
<algebra-with-one over GF(2), with 8 generators>
gap> L := LieAlgebra( FG );
#I  LAGUNA package: Constructing Lie algebra ...
<Lie algebra over GF(2)>
gap> C := LieCentre( L );
<Lie algebra of dimension 28 over GF(2)>
gap> D := LieDerivedSubalgebra( L );
#I  LAGUNA package: Computing the Lie derived subalgebra ...    
<Lie algebra of dimension 228 over GF(2)>
gap> l := Dimension( L ); c := Dimension( C ); d := Dimension( D );
256
28
228
gap> c + d = l; # This is always the case for Lie algebras of group algebras!
true

# laguna/doc/funct.xml:1728-1743

gap> G := SymmetricGroup( 3 ); FG := GroupRing( GF( 2 ), G); 
Sym( [ 1 .. 3 ] )
<algebra-with-one over GF(2), with 2 generators>
gap> L := LieAlgebra( FG );          
#I  LAGUNA package: Constructing Lie algebra ...
<Lie algebra over GF(2)>
gap> IsAbelian( G );
false
gap> IsAbelian( L );    # This command should not be used for Lie algebras!
true                    
gap> IsLieAbelian( L ); # Instead, IsLieAbelian is the correct command.
false   

# laguna/doc/funct.xml:1759-1774

gap> G := SmallGroup( 256, 400 ); FG := GroupRing( GF( 2 ), G ); 
<pc group of size 256 with 8 generators>
<algebra-with-one over GF(2), with 8 generators>
gap> L := LieAlgebra( FG );
#I  LAGUNA package: Constructing Lie algebra ...
<Lie algebra over GF(2)>
gap> IsLieSolvable( L );                       # This is very fast.
#I  LAGUNA package: Checking Lie solvability ...
true
gap> List( LieDerivedSeries( L ), Dimension ); # This is very slow.
#I  LAGUNA package: Computing the Lie derived subalgebra ...
[ 256, 228, 189, 71, 0 ]   

# laguna/doc/funct.xml:1790-1805

gap> G := SmallGroup( 256, 400 ); FG := GroupRing( GF( 2 ), G ); 
<pc group of size 256 with 8 generators>
<algebra-with-one over GF(2), with 8 generators>
gap> L := LieAlgebra( FG );
#I  LAGUNA package: Constructing Lie algebra ...
<Lie algebra over GF(2)>
gap> IsLieNilpotent( L );                           # This is very fast.
#I  LAGUNA package: Checking Lie nilpotency ...
true
gap> List( LieLowerCentralSeries( L ), Dimension ); # This is very slow.
#I  LAGUNA package: Computing the Lie derived subalgebra ...
[ 256, 228, 222, 210, 191, 167, 138, 107, 76, 54, 29, 15, 6, 0 ]   

# laguna/doc/funct.xml:1821-1832

gap> G := SmallGroup( 256, 400 ); FG := GroupRing( GF( 2 ), G ); 
<pc group of size 256 with 8 generators>
<algebra-with-one over GF(2), with 8 generators>
gap> L := LieAlgebra( FG );
#I  LAGUNA package: Constructing Lie algebra ...
<Lie algebra over GF(2)>
gap> IsLieMetabelian( L );
false   

# laguna/doc/funct.xml:1849-1862

gap> G := SymmetricGroup( 3 ); FG := GroupRing( GF( 2 ), G ); 
Sym( [ 1 .. 3 ] )
<algebra-with-one over GF(2), with 2 generators>
gap> L := LieAlgebra( FG );       
#I  LAGUNA package: Constructing Lie algebra ...
<Lie algebra over GF(2)>
gap> IsLieMetabelian( L );                                             
false
gap> IsLieCentreByMetabelian( L );
true   

# laguna/doc/funct.xml:1880-1895

gap> G := SymmetricGroup( 3 ); FG := GroupRing( GF( 2 ), G ); 
Sym( [ 1 .. 3 ] )
<algebra-with-one over GF(2), with 2 generators>
gap> L := LieAlgebra( FG );       
#I  LAGUNA package: Constructing Lie algebra ...
<Lie algebra over GF(2)>
gap> B := CanonicalBasis( L );
CanonicalBasis( <Lie algebra of dimension 6 over GF(2)> )
gap> Elements( B );
[ LieObject( (Z(2)^0)*() ), LieObject( (Z(2)^0)*(2,3) ),
  LieObject( (Z(2)^0)*(1,2) ), LieObject( (Z(2)^0)*(1,2,3) ),
  LieObject( (Z(2)^0)*(1,3,2) ), LieObject( (Z(2)^0)*(1,3) ) ]

# laguna/doc/funct.xml:1910-1923

gap> G := SymmetricGroup( 3 ); FG := GroupRing( GF( 2 ), G ); 
Sym( [ 1 .. 3 ] )
<algebra-with-one over GF(2), with 2 generators>
gap> L := LieAlgebra( FG );    
#I  LAGUNA package: Constructing Lie algebra ...
<Lie algebra over GF(2)>
gap> B := CanonicalBasis( L );
CanonicalBasis( <Lie algebra of dimension 6 over GF(2)> )
gap> IsBasisOfLieAlgebraOfGroupRing( B );
true   

# laguna/doc/funct.xml:1938-1953

gap> G := CyclicGroup( 2 ); FG := GroupRing( GF( 2 ), G ); 
<pc group of size 2 with 1 generators>
<algebra-with-one over GF(2), with 1 generators>
gap> L := LieAlgebra( FG );
#I  LAGUNA package: Constructing Lie algebra ...
<Lie algebra over GF(2)>
gap> B := CanonicalBasis( L );
CanonicalBasis( <Lie algebra of dimension 2 over GF(2)> )
gap> StructureConstantsTable( B );    
#I  LAGUNA package: Computing the structure constants table ...   
[ [ [ [  ], [  ] ], [ [  ], [  ] ] ], [ [ [  ], [  ] ], [ [  ], [  ] ] ], -1, 
  0*Z(2) ]  

# laguna/doc/funct.xml:1977-1984

gap> KG := GroupRing( GF( 2 ), DihedralGroup( 16 ) );
<algebra-with-one over GF(2), with 4 generators>
gap> LieUpperNilpotencyIndex( KG );
5      

# laguna/doc/funct.xml:2014-2021

gap> KG := GroupRing( GF( 2 ), DihedralGroup( 16 ) );
<algebra-with-one over GF(2), with 4 generators>
gap> LieLowerNilpotencyIndex( KG );
5     

# laguna/doc/funct.xml:2042-2052

gap> KG := GroupRing( GF ( 2 ), DihedralGroup( 16 ) );;
gap> L := LieAlgebra( KG );
#I  LAGUNA package: Constructing Lie algebra ...
<Lie algebra over GF(2)>
gap> LieDerivedLength( L );
#I  LAGUNA package: Computing the Lie derived subalgebra ...
3                                                            

# laguna/doc/funct.xml:2074-2079

gap> SubgroupsOfIndexTwo( DihedralGroup( 16 ) );
[ Group([ f3, f4, f1 ]), Group([ f3, f4, f2 ]), Group([ f3, f4, f1*f2 ]) ]

# laguna/doc/funct.xml:2095-2104

gap> KD8 := GroupRing( GF(2), DihedralGroup( 8 ) );
<algebra-with-one over GF(2), with 3 generators>
gap> UD8 := PcNormalizedUnitGroup( KD8 );
<pc group of size 128 with 7 generators>
gap> DihedralDepth( UD8 );
2      

# laguna/doc/funct.xml:2122-2129

gap> G := DihedralGroup( 16 );
<pc group of size 16 with 4 generators>  
gap> DimensionBasis( G );
rec( dimensionBasis := [ f1, f2, f3, f4 ], weights := [ 1, 1, 2, 4 ] )    

# laguna/doc/funct.xml:2150-2158

gap> G := DihedralGroup( 16 );
<pc group of size 16 with 4 generators>  
gap> LieDimensionSubgroups( G );
[ <pc group of size 16 with 4 generators>, Group([ f3, f4 ]), Group([ f4 ]),
  Group([ <identity> of ... ]) ]     

# laguna/doc/funct.xml:2192-2205

gap> G := DihedralGroup(16);
<pc group of size 16 with 4 generators>
gap> KG := GroupRing( GF(2), G );
<algebra-with-one over GF(2), with 4 generators>
gap> LieUpperCodimensionSeries( KG );
[ Group([ f1, f2, f3, f4 ]), Group([ f3, f4, f3*f4 ]), Group([ f4 ]), 
  Group([ f4 ]), Group([  ]) ]
gap> LieUpperCodimensionSeries( G );
[ Group([ f1, f2, f3, f4 ]), Group([ f3, f4, f3*f4 ]), Group([ f4 ]), 
  Group([ f4 ]), Group([  ]) ]

# laguna/doc/funct.xml:2218-2234

gap> SetInfoLevel( LAGInfo, 2 );
gap> KD8 := GroupRing( GF( 2 ), DihedralGroup( 8 ) );
<algebra-with-one over GF(2), with 3 generators>
gap> UD8 := PcNormalizedUnitGroup( KD8 );
#I  LAGInfo: Computing the pc normalized unit group ...
#I  LAGInfo: Calculating weighted basis ...
#I  LAGInfo: Calculating dimension basis ...
#I  LAGInfo: dimension basis finished !
#I  LAGInfo: Weighted basis finished !
#I  LAGInfo: Computing the augmentation ideal filtration...
#I  LAGInfo: Filtration finished !
#I  LAGInfo: finished, converting to PcGroup
<pc group of size 128 with 7 generators>     

gap> STOP_TEST("laguna04.tst", 1 );
