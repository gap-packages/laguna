gap> START_TEST("elements.tst");

# setting up the example
gap> K := GF( 2 );
GF(2)
gap> G := DihedralGroup( 16 );
<pc group of size 16 with 4 generators>
gap> KG := GroupRing( K, G );
<algebra-with-one over GF(2), with 4 generators>
gap> l := List( MinimalGeneratingSet( G ), g -> g^Embedding( G, KG ) );
[ (Z(2)^0)*f1, (Z(2)^0)*f2 ]
gap> a :=l[1]; b:=l[2]; # a and b are images of group generators in KG
(Z(2)^0)*f1
(Z(2)^0)*f2
gap> e := One( KG );    # for convenience, we denote the identity by e
(Z(2)^0)*<identity> of ...
gap> x := ( e + a ) * ( e + b ); 
(Z(2)^0)*<identity> of ...+(Z(2)^0)*f1+(Z(2)^0)*f2+(Z(2)^0)*f1*f2
gap> Support( x );
[ <identity> of ..., f1, f2, f1*f2 ]
gap> CoefficientsBySupport( x );
[ Z(2)^0, Z(2)^0, Z(2)^0, Z(2)^0 ]
gap> Length( x );
4
gap> TraceOfMagmaRingElement( x );
Z(2)^0
gap> TraceOfMagmaRingElement( x - e );
0*Z(2)
gap> STOP_TEST("elements.tst");
