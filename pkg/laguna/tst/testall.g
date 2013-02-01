TestMyPackage := function( pkgname )
local pkgdir, testfiles, testresult, ff, fn;
LoadPackage( pkgname );
pkgdir := DirectoriesPackageLibrary( pkgname, "tst" );

# Arrange testfiles as required
testfiles := [ "laguna.tst", "laguna02.tst", "laguna04.tst" ];

testresult:=true;
for ff in testfiles do
  fn := Filename( pkgdir, ff );
  Print("#I  Testing ", fn, "\n");
  if not Test( fn, rec(compareFunction := "uptowhitespace") ) then
    testresult:=false;
  fi;
od;  
if testresult then
  Print("#I  No errors detected while testing package ", pkgname, "\n");
else
  Print("#I  Errors detected while testing package ", pkgname, "\n");
fi;
end;

# Set the name of the package here
TestMyPackage( "laguna" );

# An example of an alternative approach (without keeping test files)
# path:=Directory( 
#         Concatenation(PackageInfo(pkgname)[1].InstallationPath, "/doc") );
# tst:=ExtractExamples( path, "manual.xml", ["../PackageInfo.g"], "Chapter" );
# RunExamples(tst, rec(compareFunction := "uptowhitespace") );