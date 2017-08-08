####################################################################
#
# Top makefile, here you need to specify the list directories with 
# dependices, ex: foo dir depends on bar dir.
# Make utility will travel to least dependency and builds the module
# then travel back to dependencies and builds the pending dependencies
#
####################################################################

.PHONY: all
all : exe 
	@$(MAKE) -C $<

exe : shared-object 
	@$(MAKE) -C $<
shared-object : static-library
	@$(MAKE) -C $<
static-library : bootstrap
	@$(MAKE) -C $<

