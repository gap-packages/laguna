# LAGUNA, chapter 2
gap> START_TEST( "laguna02.tst");

# laguna/doc/example.xml:10-19

gap> K := GF( 2 );
GF(2)
gap> G := DihedralGroup( 16 );
<pc group of size 16 with 4 generators>
gap> KG := GroupRing( K, G );
<algebra-with-one over GF(2), with 4 generators>

# laguna/doc/example.xml:25-38

gap> IsGroupAlgebra( KG ); 
true
gap> IsPModularGroupAlgebra( KG );
true
gap> IsFModularGroupAlgebra( KG );
true
gap> UnderlyingGroup( KG );
<pc group of size 16 with 4 generators>
gap> LeftActingDomain( KG );
GF(2)

# laguna/doc/example.xml:44-51

gap> UnderlyingRing( KG );
GF(2)
gap> UnderlyingField( KG );
GF(2)

# laguna/doc/example.xml:58-65

gap> MinimalGeneratingSet( G );
[ f1, f2 ]
gap> l := List( last, g -> g^Embedding( G, KG ) );
[ (Z(2)^0)*f1, (Z(2)^0)*f2 ]

# laguna/doc/example.xml:69-79

gap> a :=l[1]; b:=l[2]; # a and b are images of group generators in KG
(Z(2)^0)*f1
(Z(2)^0)*f2
gap> e := One( KG );    # for convenience, we denote the identity by e
(Z(2)^0)*<identity> of ...
gap> x := ( e + a ) * ( e + b ); 
(Z(2)^0)*<identity> of ...+(Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f1*f2  

# laguna/doc/example.xml:83-94

gap> Support( x );
[ <identity> of ..., f1, f2, f1*f2 ]
gap> CoefficientsBySupport( x );
[ Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0 ]
gap> Length( x );
4
gap> TraceOfMagmaRingElement( x );
Z(2)^0

# laguna/doc/example.xml:99-106

gap> Augmentation( x );
0*Z(2)
gap> IsUnit( KG, x );
false

# laguna/doc/example.xml:112-119

gap> y := e + x;
(Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f1*f2
gap> IsUnit( KG, y );
true  

# laguna/doc/example.xml:123-132

gap> y^-1;
(Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f3+(Z(2)^0)*f4+(Z(2)^0)*f1*f2+(Z(2)^
0)*f1*f3+(Z(2)^0)*f1*f4+(Z(2)^0)*f2*f4+(Z(2)^0)*f1*f2*f4+(Z(2)^0)*f2*f3*f4+(
Z(2)^0)*f1*f2*f3*f4
gap> y * y^-1;
(Z(2)^0)*<identity> of ... 

# laguna/doc/example.xml:139-152

gap> Involution( y );
(Z(2)^0)*f1+(Z(2)^0)*f1*f2+(Z(2)^0)*f2*f3*f4
gap> y = Involution( y );
false
gap> IsSymmetric( y );
false
gap> y * Involution( y );
(Z(2)^0)*<identity> of ...+(Z(2)^0)*f2+(Z(2)^0)*f2*f3*f4  
gap> IsUnitary( y );
false

# laguna/doc/example.xml:160-168

gap> AugmentationIdeal( KG );
<two-sided ideal in <algebra-with-one over GF(2), with 4 generators>,
  (dimension 15)>
gap> RadicalOfAlgebra( KG ) = AugmentationIdeal( KG );
true

# laguna/doc/example.xml:175-180

gap> AugmentationIdealNilpotencyIndex( KG );
9

# laguna/doc/example.xml:186-196

gap> s := AugmentationIdealPowerSeries( KG );;
gap> s[2];
<algebra of dimension 13 over GF(2)>
gap> List(s,Dimension);
[ 15, 13, 11, 9, 7, 5, 3, 1, 0 ]
gap> Length(s);
9

# laguna/doc/example.xml:209-214

gap> V := NormalizedUnitGroup( KG );
<group of size 32768 with 15 generators>   

# laguna/doc/example.xml:219-224

gap> W := PcNormalizedUnitGroup( KG );
<pc group of size 32768 with 15 generators>

# laguna/doc/example.xml:238-249

gap> t := NaturalBijectionToPcNormalizedUnitGroup( KG );
MappingByFunction( <group of size 32768 with 15 generators>, <pc group of size\
 32768 with 15 generators>, function( x ) ... end )
gap> Image(t) = W;
true
gap> List( AsList( G ), x -> ( x^Embedding( G, KG ) )^t );
[ <identity> of ..., f1, f2, f4, f8, f1*f2, f1*f4, f1*f8, f2*f4, f2*f8, 
  f4*f8, f1*f2*f4, f1*f2*f8, f1*f4*f8, f2*f4*f8, f1*f2*f4*f8 ]

# laguna/doc/example.xml:255-261

gap> f := NaturalBijectionToNormalizedUnitGroup( KG );;
gap> Image(f) = V;
true

# laguna/doc/example.xml:266-277

gap> cc := ConjugacyClasses( W );;
gap> Length( cc );
848
gap> Representative( cc[ Length( cc ) ] );
f1*f2*f3*f6*f10*f13
gap> last^f;
(Z(2)^0)*<identity> of ...+(Z(2)^0)*f1*f2+(Z(2)^0)*f1*f3+(Z(2)^0)*f1*f4+(Z(2)^
0)*f2*f3+(Z(2)^0)*f1*f2*f3+(Z(2)^0)*f1*f3*f4

# laguna/doc/example.xml:283-292

gap> LowerCentralSeries( W );
[ <pc group of size 32768 with 15 generators>, 
  Group([ f4*f8, f5*f7*f11*f13*f15, f6*f7*f9*f11*f13*f14*f15, f8, f9*f13, 
      f10*f11, f12*f13, f13*f15, f14*f15 ]), 
  Group([ f8, f9*f15, f10*f11, f12*f15, f13*f15, f14*f15 ]), 
  Group([ f12*f15, f13*f15, f14*f15 ]), Group([ <identity> of ... ]) ]

# laguna/doc/example.xml:301-320

gap> C := Centre( W );;
gap> m := MinimalGeneratingSet( C );
[ f8*f13*f14*f15, f13*f14*f15, f8*f12*f14*f15, f15, f4*f6*f8*f13 ]
gap> List( m, g -> g^f );
[ (Z(2)^0)*<identity> of ...+(Z(2)^0)*f3+(Z(2)^0)*f1*f2+(Z(2)^0)*f3*f4+(Z(2)^
    0)*f1*f2*f3+(Z(2)^0)*f1*f2*f4+(Z(2)^0)*f1*f2*f3*f4, 
  (Z(2)^0)*f3+(Z(2)^0)*f4+(Z(2)^0)*f1*f2+(Z(2)^0)*f3*f4+(Z(2)^0)*f1*f2*f3+(
    Z(2)^0)*f1*f2*f4+(Z(2)^0)*f1*f2*f3*f4, (Z(2)^0)*<identity> of ...+(Z(2)^
    0)*f1+(Z(2)^0)*f3+(Z(2)^0)*f1*f2+(Z(2)^0)*f1*f3+(Z(2)^0)*f1*f4+(Z(2)^
    0)*f3*f4+(Z(2)^0)*f1*f2*f3+(Z(2)^0)*f1*f2*f4+(Z(2)^0)*f1*f3*f4+(Z(2)^
    0)*f1*f2*f3*f4, (Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f3+(Z(2)^0)*f4+(Z(2)^
    0)*f1*f2+(Z(2)^0)*f1*f3+(Z(2)^0)*f1*f4+(Z(2)^0)*f2*f3+(Z(2)^0)*f2*f4+(
    Z(2)^0)*f3*f4+(Z(2)^0)*f1*f2*f3+(Z(2)^0)*f1*f2*f4+(Z(2)^0)*f1*f3*f4+(Z(2)^
    0)*f2*f3*f4+(Z(2)^0)*f1*f2*f3*f4, (Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f3+(
    Z(2)^0)*f4+(Z(2)^0)*f1*f3+(Z(2)^0)*f1*f4+(Z(2)^0)*f3*f4+(Z(2)^
    0)*f1*f3*f4+(Z(2)^0)*f2*f3*f4 ]

# laguna/doc/example.xml:326-350

gap> L := LieAlgebra( KG );
#I  LAGUNA package: Constructing Lie algebra ...
<Lie algebra of dimension 16 over GF(2)>
gap> D := LieDerivedSubalgebra( L );
#I  LAGUNA package: Computing the Lie derived subalgebra ...
<Lie algebra of dimension 9 over GF(2)>
gap> LC := LieCentre( L );
<Lie algebra of dimension 7 over GF(2)>
gap> LieLowerNilpotencyIndex( KG );
5
gap> LieUpperNilpotencyIndex( KG );
5
gap> IsLieAbelian( L );
false
gap> IsLieSolvable( L );
#I  LAGUNA package: Checking Lie solvability ...
true
gap> IsLieMetabelian( L );
false
gap> IsLieCentreByMetabelian( L );
true

gap> STOP_TEST("laguna02.tst", 1 );
