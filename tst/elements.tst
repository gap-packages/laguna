gap> START_TEST("elements.tst");

# setting up the example
gap> G := AllSmallGroups(27)[4];;
gap> F := GF(3);;
gap> FG := GroupRing(F,G);;
gap> m := MinimalGeneratingSet(G);;
gap> emb := Embedding(G,FG);;
gap> l := List(m, x->x^(emb));;
gap> e := Identity(FG);;
gap> u := e + (Z(3)^2)*(l[1]) + (Z(3)^2)*(l[2]);;
gap> v := e + (Z(3)^2)*((m[1]^(-1))^(emb)) + (Z(3)^2)*((m[2]^(-1))^(emb));;
gap> Involution(u) = v;
true
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
gap> Involution(x);
(Z(2)^0)*<identity> of ...+(Z(2)^0)*f1+(Z(2)^0)*f1*f2+(Z(2)^0)*f2*f3*f4
gap> y := x + Involution( x );
(Z(2)^0)*f2+(Z(2)^0)*f2*f3*f4
gap> y = Involution( y );
true
gap> IsUnit(x);
false
gap> IsUnit(x+e);
true
gap> m:=MinimalGeneratingSet(G);;
gap> u:=BicyclicUnitOfType1(KG, m[1], m[2]);
(Z(2)^0)*<identity> of ...+(Z(2)^0)*f2+(Z(2)^0)*f1*f2+(Z(2)^0)*f2*f3*f4+(Z(2)^
0)*f1*f2*f3*f4
gap> Order(u);
2
gap> u:=BicyclicUnitOfType1(KG, m[1], m[2]^2);
(Z(2)^0)*<identity> of ...+(Z(2)^0)*f3+(Z(2)^0)*f1*f3+(Z(2)^0)*f3*f4+(Z(2)^
0)*f1*f3*f4
gap> IsUnit(BicyclicUnitOfType1(KG, m[1], m[2]^2));
true
gap> Order(u);
2
gap> IsUnit(BicyclicUnitOfType1(KG, m[1], m[2]^3));
true
gap> BicyclicUnitOfType1(KG, m[1], m[2]^4);
(Z(2)^0)*<identity> of ...
gap> u:=BicyclicUnitOfType1(KG, m[1], m[1]*m[2]);
(Z(2)^0)*<identity> of ...+(Z(2)^0)*f2+(Z(2)^0)*f1*f2+(Z(2)^0)*f2*f3*f4+(Z(2)^
0)*f1*f2*f3*f4
gap> IsUnit(u);
true
gap> Order(u);
2
gap> u:=BicyclicUnitOfType2(KG, m[1], m[2]);
(Z(2)^0)*<identity> of ...+(Z(2)^0)*f2+(Z(2)^0)*f1*f2+(Z(2)^0)*f2*f3*f4+(Z(2)^
0)*f1*f2*f3*f4
gap> Order(u);
2
gap> u:=BicyclicUnitOfType2(KG, m[1], m[2]^2);
(Z(2)^0)*<identity> of ...+(Z(2)^0)*f3+(Z(2)^0)*f1*f3+(Z(2)^0)*f3*f4+(Z(2)^
0)*f1*f3*f4
gap> Order(u);
2
gap> IsUnit(BicyclicUnitOfType2(KG, m[1], m[2]^3));
true
gap> BicyclicUnitOfType2(KG, m[1], m[2]^4);
(Z(2)^0)*<identity> of ...
gap> u:=BicyclicUnitOfType2(KG, m[1], m[1]*m[2]);
(Z(2)^0)*<identity> of ...+(Z(2)^0)*f2+(Z(2)^0)*f1*f2+(Z(2)^0)*f2*f3*f4+(Z(2)^
0)*f1*f2*f3*f4
gap> IsUnit(u);
true
gap> Order(u);
2
gap> STOP_TEST("elements.tst");
