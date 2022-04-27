#############################################################################
##  
#W  init.g                 The LAGUNA package                    Viktor Bovdi
#W                                                         Olexandr Konovalov
#W                                                         Richard Rossmanith
#W                                                            Csaba Schneider
##
#############################################################################

# read the function declarations
ReadPackage("laguna", "lib/laguna.gd");
ReadPackage("laguna", "lib/mip.gd");

# set the limit for KernelSizeTest
LAGUNA_LOWER_KERNEL_SIZE_LIMIT:=0;
LAGUNA_UPPER_KERNEL_SIZE_LIMIT:=2^15;

# read the other part of code
ReadPackage("laguna", "lib/laguna.g");
ReadPackage("laguna", "lib/mip.g");
ReadPackage("laguna", "lib/liftings.g");

# set the default InfoLevel
SetInfoLevel( LAGInfo, 1 );
