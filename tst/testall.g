LoadPackage( "laguna" );
LoadPackage( "smallgrp" ); # the tests use SmallGroup, IdGroup and AllSmallGroups

TestDirectory(DirectoriesPackageLibrary( "laguna", "tst" ),
  rec(exitGAP     := true,
      testOptions := rec(compareFunction := "uptowhitespace") ) );

FORCE_QUIT_GAP(1); # if we ever get here, there was an error

