#############################################################################
##
#W  PackageInfo.g              The LAGUNA package                Viktor Bovdi
#W                                                         Olexandr Konovalov
#W                                                         Richard Rossmanith
#W                                                            Csaba Schneider
##
#############################################################################

SetPackageInfo( rec(

PackageName := "LAGUNA",
Subtitle := "Lie AlGebras and UNits of group Algebras",
Version := "3.9.6",
Date := "25/02/2023", # dd/mm/yyyy format
License := "GPL-2.0-or-later",
##  <#GAPDoc Label="PKGVERSIONDATA">
##  <!ENTITY VERSION "3.9.6">
##  <!ENTITY RELEASEDATE "25 February 2023">
##  <!ENTITY RELEASEYEAR "2023">
##  <#/GAPDoc>

SourceRepository := rec(
    Type := "git",
    URL := Concatenation( "https://github.com/gap-packages/", LowercaseString(~.PackageName) ),
),
IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),
PackageWWWHome  := Concatenation( "https://gap-packages.github.io/", LowercaseString(~.PackageName) ),
README_URL      := Concatenation( ~.PackageWWWHome, "/README.md" ),
PackageInfoURL  := Concatenation( ~.PackageWWWHome, "/PackageInfo.g" ),
ArchiveURL      := Concatenation( ~.SourceRepository.URL,
                                 "/releases/download/v", ~.Version,
                                 "/", LowercaseString(~.PackageName), "-", ~.Version ),

ArchiveFormats := ".tar.gz",

Persons := [
  rec(
    LastName      := "Bovdi",
    FirstNames    := "Victor",
    IsAuthor      := true,
    IsMaintainer  := true,
    Email         := "vbovdi@science.unideb.hu",
    PostalAddress := Concatenation( [ 
                     "Institute of Mathematics and Informatics\n", 
                     "University of Debrecen\n", 
                     "P.O.Box 12, Debrecen\n", 
                     "H-4010 Hungary" ] ),
    Place         := "Debrecen",
    Institution   := "University of Debrecen"
     ),
  rec(
    LastName      := "Konovalov",
    FirstNames    := "Olexandr",
    IsAuthor      := true,
    IsMaintainer  := true,
    Email         := "obk1@st-andrews.ac.uk",
    WWWHome       := "https://olexandr-konovalov.github.io/",
    PostalAddress := Concatenation( [
                     "School of Computer Science\n",
                     "University of St Andrews\n",
                     "Jack Cole Building, North Haugh,\n",
                     "St Andrews, Fife, KY16 9SX, Scotland" ] ),
    Place         := "St Andrews",
    Institution   := "University of St Andrews"
     ),
  rec(
    LastName := "Rossmanith",
    FirstNames := "Richard",
    IsAuthor := true,
    IsMaintainer := false
     ),
  rec( 
    LastName      := "Schneider",
    FirstNames    := "Csaba",
    IsAuthor      := true,
    IsMaintainer  := true,
    Email         := "csaba.schneider@sztaki.hu",
    WWWHome       := "http://www.sztaki.hu/~schneider",
    PostalAddress := Concatenation( [
                     "Csaba Schneider\n",
                     "Informatics Laboratory\n",
                     "Computer and Automation Research Institute\n",
                     "The Hungarian Academy of Sciences\n",
	                 "1111 Budapest, Lagymanyosi u. 11, Hungary" ]),
    Place         := "Budapest",
    Institution   := "Computer and Automation Research Institute"
     )
],

Status := "accepted",
CommunicatedBy := "Herbert Pahlings (Aachen)",
AcceptDate := "06/2003",

AbstractHTML := "The <span class=\"pkgname\">LAGUNA</span> package replaces the <span class=\"pkgname\">LAG</span> package and provides functionality for calculation of the normalized unit group of the modular group algebra of the finite p-group and for investigation of Lie algebra associated with group algebras and other associative algebras.",
                  
PackageDoc := rec(
  BookName := "LAGUNA",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0_mj.html",
  PDFFile := "doc/manual.pdf",
  SixFile := "doc/manual.six",
  LongTitle := "Lie AlGebras and UNits of group Algebras",
),

Dependencies := rec(
  GAP := ">=4.9",
  NeededOtherPackages := [ ["GAPDoc", ">= 1.6.1"] ],
  SuggestedOtherPackages := [ ["Sophus", ">= 1.24"] ],
  ExternalConditions := []
),

AvailabilityTest := ReturnTrue,
TestFile := "tst/testall.g",

Keywords := ["group ring", "modular group algebra", "Lie algebra", "unit group"]

));
