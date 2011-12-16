#############################################################################
##  
#W  laguna.g                 The LAGUNA package                  Viktor Bovdi
#W                                                        Alexander Konovalov
#W                                                         Richard Rossmanith
#W                                                            Csaba Schneider
##
#H  $Id: laguna.g,v 1.19 2004/09/14 08:35:43 alexk Exp $
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
##  LAGUNABuildManual()
##
LAGUNABuildManual:=function()
local laguna_path, laguna_main, laguna_files, laguna_bookname;
laguna_path:=Concatenation(
               GAPInfo.PackagesInfo.("laguna")[1].InstallationPath,"/doc/");
laguna_main:="manual.xml";
laguna_files:=["intro.xml", "example.xml", "theory.xml", "funct.xml"];
laguna_bookname:="LAGUNA";
MakeGAPDocDoc(laguna_path, laguna_main, laguna_files, laguna_bookname);  
end;


#############################################################################
##
##  LAGUNABuildManualHTML()
##
LAGUNABuildManualHTML:=function()
local laguna_path, laguna_main, laguna_files, str, r, h;
laguna_path:=Concatenation(
               GAPInfo.PackagesInfo.("laguna")[1].InstallationPath,"/doc/");
laguna_main:="manual.xml";
laguna_files:=["intro.xml", "example.xml", "theory.xml", "funct.xml"];
str:=ComposedXMLString(laguna_path, laguna_main, laguna_files);
r:=ParseTreeXMLString(str);
CheckAndCleanGapDocTree(r);
h:=GAPDoc2HTML(r, laguna_path);
GAPDoc2HTMLPrintHTMLFiles(h, laguna_path);
end;


#############################################################################
##
#E
##