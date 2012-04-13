LoadPackage("laguna");

dir := DirectoriesPackageLibrary("laguna","tst");

testsfiles := [ 
"laguna.tst",
"laguna02.tst",
"laguna04.tst"
];

Print("=================================================================\n");
for ff in testsfiles do
  fn := Filename(dir, ff );
  Print("*** TESTING ", fn, "\n");
  ReadTest( fn );
  Print("=================================================================\n");
od;  
Print("*** FINISHED LAGUNA PACKAGE TESTS\n");
Print("=================================================================\n");