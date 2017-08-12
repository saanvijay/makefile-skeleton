####################################################################
#
# Top makefile, here you need to specify the list directories with 
# dependices, ex: foo dir depends on bar dir.
# Make utility will travel to least dependency and builds the module
# then travel back to dependencies and builds the pending dependencies
#
####################################################################

.PHONY: all
all: 
	@$(MAKE) -C bootstrap
	@$(MAKE) -C static-library
	@$(MAKE) -C shared-object
	@$(MAKE) -C exe


clean: 
	#@$(MAKE) -C bootstrap $@
	@$(MAKE) -C static-library $@
	@$(MAKE) -C shared-object $@
	@$(MAKE) -C exe $@



