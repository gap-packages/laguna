#############################################################################
##  
#W  init.g                 The LAGUNA package                    Viktor Bovdi
#W                                                        Alexander Konovalov
#W                                                         Richard Rossmanith
#W                                                            Csaba Schneider
##
#H  @(#)$Id: init.g,v 1.8 2003/07/21 19:19:15 alexk Exp $
##
#############################################################################

# read the function declarations
ReadPackage("laguna/lib/laguna.gd");

# read the other part of code
ReadPackage("laguna/lib/laguna.g");

# set the default InfoLevel
SetInfoLevel( LAGInfo, 1 );