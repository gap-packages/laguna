#############################################################################
##  
#W  laguna.g                 The LAGUNA package                  Viktor Bovdi
#W                                                        Alexander Konovalov
#W                                                         Richard Rossmanith
#W                                                            Csaba Schneider
##
#############################################################################


#############################################################################
##
##  PcPresentationOfNormalizedUnit( KG )
## 
##
##  For a group algebra KG this function returns another function, 
##  which for a given element x of KG will return corresponding
##  element of PcNormalizedUnitGroup. This fuction is used in
##  the construction of NaturalBijectionToPcNormalizedUnitGroup
##
PcPresentationOfNormalizedUnit := function( KG ) 
local emb;
  emb:=function(x)
    local coeffs, gens, w, i;
    coeffs := NormalizedUnitCF( KG, x );
    gens := GeneratorsOfGroup( PcNormalizedUnitGroup( KG ));
    w := One( PcNormalizedUnitGroup( KG ));
    for i in [ 1 .. Length(coeffs) ] do
      if not coeffs[i] = Zero( LeftActingDomain( KG ) ) then
        w := w*gens[i];
      fi;
    od;
    return w;
  end;
return emb;
end;


#############################################################################
##
#E
##
