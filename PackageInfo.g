#############################################################################
##
#W  PackageInfo.g              The LAGUNA package                Viktor Bovdi
#W                                                        Alexander Konovalov
#W                                                         Richard Rossmanith
#W                                                            Csaba Schneider
##
#H  $Id: PackageInfo.g,v 1.14 2003/07/27 12:57:50 alexk Exp $
##
#############################################################################

SetPackageInfo( rec(

PackageName := "LAGUNA",
Subtitle := "Lie AlGebras and UNits of group Algebras",
Version := "3.2.1",
Date := "27/07/2003",
ArchiveURL := "http://ukrgap.exponenta.ru/LAGUNA/laguna-3.2.1",
ArchiveFormats := ".zoo .tar.gz .tar.bz2 -win.zip",

#TextFiles := ["init.g", ......],
#BinaryFiles := ["doc/manual.dvi", ......],

Persons := [
     rec(
     LastName := "Bovdi",
     FirstNames := "Victor",
     IsAuthor := true,
     IsMaintainer := true,
     Email := "vbovdi@math.klte.hu",
     PostalAddress := "Institute of Mathematics and Informatics, University of Deberecen, P.O.Box 12, Debrecen, H-4010 Hungary",
     ),
     rec(
     LastName := "Konovalov",
     FirstNames := "Alexander",
     IsAuthor := true,
     IsMaintainer := true,
     Email := "konovalov@member.ams.org",
     WWWHome := "http://ukrgap.exponenta.ru/konoval.htm",
     PostalAddress := "P.O.Box 1317, Central Post Office, Zaporozhye, 69000 Ukraine",
     Institution := "Department of Mathematics, Zaporozhye State University"
     ),
     rec(
     LastName := "Rossmanith",
     FirstNames := "Richard",
     IsAuthor := true,
     IsMaintainer := false,
     Email := "richard.rossmanith@d-fine.de",
     PostalAddress := "d-fine GmbH, Mergenthalerallee 55, 65760 Eschborn/Frankfurt, Germany"
     ),
     rec(
     LastName := "Schneider",
     FirstNames := "Csaba",
     IsAuthor := true,
     IsMaintainer := true,
     Email := "csaba@maths.uwa.edu.au",
     WWWHome := "http://www.maths.uwa.edu.au/~csaba/",
     PostalAddress := "School of Mathematics and Statistics, The University of Western Australia, 35 Stirling Highway, 6009 Crawley Western Australia",
     )
],

Status := "accepted",
CommunicatedBy := "Herbert Pahlings (Aachen)",
AcceptDate := "06/2003",

README_URL := "http://ukrgap.exponenta.ru/laguna/README.laguna",
PackageInfoURL := "http://ukrgap.exponenta.ru/laguna/PackageInfo.g",
AbstractHTML := "The <span class=\"pkgname\">LAGUNA</span> package provides functionality for calculation of the normalized unit group of the modular group algebra of the finite p-group and for investigation of Lie algebra associated with group algebras and other associative algebras",
PackageWWWHome := "http://ukrgap.exponenta.ru/laguna.htm",
                  
PackageDoc := rec(
  BookName := "LAGUNA",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0.html",
  PDFFile := "doc/manual.pdf",
  SixFile := "doc/manual.six",
  LongTitle := "Lie AlGebras and UNits of group Algebras",
  Autoload := true
),


Dependencies := rec(
  GAP := ">=4.4",
  NeededOtherPackages := [["GAPDoc", ">= 0.999"]],
  SuggestedOtherPackages := [],
  ExternalConditions := []
),

AvailabilityTest := ReturnTrue,
Autoload := true,
#TestFile := "tst/testall.g",

Keywords := ["group ring", "modular group algebra", "Lie algebra", "unit group"]

));
