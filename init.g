#############################################################################
##  
#W  init.g                 The LAGUNA package                    Viktor Bovdi
#W                                                        Alexander Konovalov
#W                                                         Richard Rossmanith
#W                                                            Csaba Schneider
##
#H  @(#)$Id: init.g,v 1.11 2004/08/27 16:07:02 alexk Exp $
##
#############################################################################

# read the function declarations
ReadPackage("laguna/lib/laguna.gd");

# read the other part of code
ReadPackage("laguna/lib/laguna.g");

# set the default InfoLevel
SetInfoLevel( LAGInfo, 1 );