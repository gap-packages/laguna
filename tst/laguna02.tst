# LAGUNA, chapter 2

# [ "/Users/alexk/gap4r7p1pre/pkg/laguna/doc/example.xml", 10, 19 ]

gap> K := GF( 2 );
GF(2)
gap> G := DihedralGroup( 16 );
<pc group of size 16 with 4 generators>
gap> KG := GroupRing( K, G );
<algebra-with-one over GF(2), with 4 generators>


# [ "/Users/alexk/gap4r7p1pre/pkg/laguna/doc/example.xml", 25, 38 ]

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


# [ "/Users/alexk/gap4r7p1pre/pkg/laguna/doc/example.xml", 44, 49 ]
gap> UnderlyingRing( KG );
GF(2)
gap> UnderlyingField( KG );
GF(2)

# [ "/Users/alexk/gap4r7p1pre/pkg/laguna/doc/example.xml", 56, 63 ]

gap> MinimalGeneratingSet( G );
[ f1, f2 ]
gap> l := List( last, g -> g^Embedding( G, KG ) );
[ (Z(2)^0)*f1, (Z(2)^0)*f2 ]


# [ "/Users/alexk/gap4r7p1pre/pkg/laguna/doc/example.xml", 67, 77 ]

gap> a :=l[1]; b:=l[2]; # a and b are images of group generators in KG
(Z(2)^0)*f1
(Z(2)^0)*f2
gap> e := One( KG );    # for convenience, we denote the identity by e
(Z(2)^0)*<identity> of ...
gap> x := ( e + a ) * ( e + b ); 
(Z(2)^0)*<identity> of ...+(Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f1*f2  


# [ "/Users/alexk/gap4r7p1pre/pkg/laguna/doc/example.xml", 81, 92 ]

gap> Support( x );
[ <identity> of ..., f1, f2, f1*f2 ]
gap> CoefficientsBySupport( x );
[ Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0 ]
gap> Length( x );
4
gap> TraceOfMagmaRingElement( x );
Z(2)^0


# [ "/Users/alexk/gap4r7p1pre/pkg/laguna/doc/example.xml", 97, 102 ]
gap> Augmentation( x );
0*Z(2)
gap> IsUnit( KG, x );
false

# [ "/Users/alexk/gap4r7p1pre/pkg/laguna/doc/example.xml", 108, 115 ]

gap> y := e + x;
(Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f1*f2
gap> IsUnit( KG, y );
true  


# [ "/Users/alexk/gap4r7p1pre/pkg/laguna/doc/example.xml", 119, 128 ]

gap> y^-1;
(Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f3+(Z(2)^0)*f4+(Z(2)^0)*f1*f2+(Z(2)^
0)*f1*f3+(Z(2)^0)*f1*f4+(Z(2)^0)*f2*f4+(Z(2)^0)*f1*f2*f4+(Z(2)^0)*f2*f3*f4+(
Z(2)^0)*f1*f2*f3*f4
gap> y * y^-1;
(Z(2)^0)*<identity> of ... 


# [ "/Users/alexk/gap4r7p1pre/pkg/laguna/doc/example.xml", 135, 148 ]

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


# [ "/Users/alexk/gap4r7p1pre/pkg/laguna/doc/example.xml", 156, 164 ]

gap> AugmentationIdeal( KG );
<two-sided ideal in <algebra-with-one over GF(2), with 4 generators>,
  (dimension 15)>
gap> RadicalOfAlgebra( KG ) = AugmentationIdeal( KG );
true


# [ "/Users/alexk/gap4r7p1pre/pkg/laguna/doc/example.xml", 171, 174 ]
gap> AugmentationIdealNilpotencyIndex( KG );
9

# [ "/Users/alexk/gap4r7p1pre/pkg/laguna/doc/example.xml", 180, 189 ]

gap> AugmentationIdealPowerSeries( KG );
[ <algebra of dimension 15 over GF(2)>, <algebra of dimension 13 over GF(2)>, 
  <algebra of dimension 11 over GF(2)>, <algebra of dimension 9 over GF(2)>, 
  <algebra of dimension 7 over GF(2)>, <algebra of dimension 5 over GF(2)>, 
  <algebra of dimension 3 over GF(2)>, <algebra of dimension 1 over GF(2)>, 
  <algebra over GF(2)> ]


# [ "/Users/alexk/gap4r7p1pre/pkg/laguna/doc/example.xml", 202, 207 ]

gap> V := NormalizedUnitGroup( KG );
<group of size 32768 with 15 generators>   


# [ "/Users/alexk/gap4r7p1pre/pkg/laguna/doc/example.xml", 212, 217 ]

gap> W := PcNormalizedUnitGroup( KG );
<pc group of size 32768 with 15 generators>


# [ "/Users/alexk/gap4r7p1pre/pkg/laguna/doc/example.xml", 231, 240 ]

gap> t := NaturalBijectionToPcNormalizedUnitGroup( KG );
MappingByFunction( <group of size 32768 with 15 generators>, <pc group of size\
 32768 with 15 generators>, function( x ) ... end )
gap> List( AsList( G ), x -> ( x^Embedding( G, KG ) )^t );
[ <identity> of ..., f2, f1, f3, f7, f1*f2*f3, f2*f3, f2*f7, f1*f3, f1*f7,
  f3*f7, f1*f2*f7, f1*f2*f3*f7, f2*f3*f7, f1*f3*f7, f1*f2 ]


# [ "/Users/alexk/gap4r7p1pre/pkg/laguna/doc/example.xml", 246, 265 ]
gap> f := NaturalBijectionToNormalizedUnitGroup( KG );
[ f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15 ] ->
[ (Z(2)^0)*f2, (Z(2)^0)*f1, (Z(2)^0)*f3,
  (Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f1*f2,
  (Z(2)^0)*f2+(Z(2)^0)*f3+(Z(2)^0)*f2*f3,
  (Z(2)^0)*f1+(Z(2)^0)*f3+(Z(2)^0)*f1*f3, (Z(2)^0)*f4,
  (Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f3+(Z(2)^0)*f1*f2+(Z(2)^0)*f1*f3+(Z(2)^
    0)*f2*f3+(Z(2)^0)*f1*f2*f3, (Z(2)^0)*f2+(Z(2)^0)*f4+(Z(2)^0)*f2*f4,
  (Z(2)^0)*f1+(Z(2)^0)*f4+(Z(2)^0)*f1*f4,
  (Z(2)^0)*f3+(Z(2)^0)*f4+(Z(2)^0)*f3*f4,
  (Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f4+(Z(2)^0)*f1*f2+(Z(2)^0)*f1*f4+(Z(2)^
    0)*f2*f4+(Z(2)^0)*f1*f2*f4, (Z(2)^0)*f2+(Z(2)^0)*f3+(Z(2)^0)*f4+(Z(2)^
    0)*f2*f3+(Z(2)^0)*f2*f4+(Z(2)^0)*f3*f4+(Z(2)^0)*f2*f3*f4,
  (Z(2)^0)*f1+(Z(2)^0)*f3+(Z(2)^0)*f4+(Z(2)^0)*f1*f3+(Z(2)^0)*f1*f4+(Z(2)^
    0)*f3*f4+(Z(2)^0)*f1*f3*f4, (Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f3+(Z(2)^
    0)*f4+(Z(2)^0)*f1*f2+(Z(2)^0)*f1*f3+(Z(2)^0)*f1*f4+(Z(2)^0)*f2*f3+(Z(2)^
    0)*f2*f4+(Z(2)^0)*f3*f4+(Z(2)^0)*f1*f2*f3+(Z(2)^0)*f1*f2*f4+(Z(2)^
    0)*f1*f3*f4+(Z(2)^0)*f2*f3*f4+(Z(2)^0)*f1*f2*f3*f4 ]

# [ "/Users/alexk/gap4r7p1pre/pkg/laguna/doc/example.xml", 270, 282 ]

gap> cc := ConjugacyClasses( W );;
gap> Length( cc );
848
gap> Representative( cc[ Length( cc ) ] );
f1*f2*f4*f6*f12*f15
gap> last^f;
(Z(2)^0)*<identity> of ...+(Z(2)^0)*f2+(Z(2)^0)*f4+(Z(2)^0)*f1*f2+(Z(2)^
0)*f1*f3+(Z(2)^0)*f1*f4+(Z(2)^0)*f2*f3+(Z(2)^0)*f2*f4+(Z(2)^0)*f3*f4+(Z(2)^
0)*f1*f2*f3+(Z(2)^0)*f1*f3*f4


# [ "/Users/alexk/gap4r7p1pre/pkg/laguna/doc/example.xml", 288, 297 ]

gap> LowerCentralSeries( W );
[ <pc group of size 32768 with 15 generators>,
  Group([ f3, f5*f8*f10*f12*f13*f14*f15, f6*f8*f12*f14*f15, f7, f9*f12,
      f10*f14, f11*f13, f13*f14, f14*f15 ]),
  Group([ f7, f9*f12, f10*f15, f11*f15, f13*f15, f14*f15 ]),
  Group([ f11*f15, f13*f15, f14*f15 ]), Group([ <identity> of ... ]) ]


# [ "/Users/alexk/gap4r7p1pre/pkg/laguna/doc/example.xml", 306, 326 ]

gap> C := Centre( W );
Group([ f3*f5*f13*f15, f7, f15, f13*f15, f14*f15, f11*f13*f14*f15 ])
gap> m := MinimalGeneratingSet( C );
[ f7*f13*f14*f15, f13*f14*f15, f7*f11*f14*f15, f15, f3*f5*f14 ]
gap> List( m, g -> g^f );
[ (Z(2)^0)*<identity> of ...+(Z(2)^0)*f3+(Z(2)^0)*f1*f2+(Z(2)^0)*f3*f4+(Z(2)^
    0)*f1*f2*f3+(Z(2)^0)*f1*f2*f4+(Z(2)^0)*f1*f2*f3*f4,
  (Z(2)^0)*f3+(Z(2)^0)*f4+(Z(2)^0)*f1*f2+(Z(2)^0)*f3*f4+(Z(2)^0)*f1*f2*f3+(
    Z(2)^0)*f1*f2*f4+(Z(2)^0)*f1*f2*f3*f4, (Z(2)^0)*<identity> of ...+(Z(2)^
    0)*f2+(Z(2)^0)*f3+(Z(2)^0)*f1*f2+(Z(2)^0)*f2*f3+(Z(2)^0)*f2*f4+(Z(2)^
    0)*f3*f4+(Z(2)^0)*f1*f2*f3+(Z(2)^0)*f1*f2*f4+(Z(2)^0)*f2*f3*f4+(Z(2)^
    0)*f1*f2*f3*f4, (Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f3+(Z(2)^0)*f4+(Z(2)^
    0)*f1*f2+(Z(2)^0)*f1*f3+(Z(2)^0)*f1*f4+(Z(2)^0)*f2*f3+(Z(2)^0)*f2*f4+(
    Z(2)^0)*f3*f4+(Z(2)^0)*f1*f2*f3+(Z(2)^0)*f1*f2*f4+(Z(2)^0)*f1*f3*f4+(Z(2)^
    0)*f2*f3*f4+(Z(2)^0)*f1*f2*f3*f4, (Z(2)^0)*<identity> of ...+(Z(2)^0)*f1+(
    Z(2)^0)*f3+(Z(2)^0)*f1*f3+(Z(2)^0)*f1*f4+(Z(2)^0)*f2*f3+(Z(2)^0)*f2*f4+(
    Z(2)^0)*f3*f4+(Z(2)^0)*f1*f3*f4 ]


# [ "/Users/alexk/gap4r7p1pre/pkg/laguna/doc/example.xml", 332, 356 ]

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

