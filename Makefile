####################################################################
#
# Top makefile, here you need to specify the list directories with 
# dependices, ex: foo dir depends on bar dir.
# Make utility will travel to least dependency and builds the module
# then travel back to dependencies and builds the pending dependencies
#
####################################################################

SUBDIRS = bootstrap \
	  exe \
          static-library \
          shared-object

.PHONY: all $(SUBDIRS)

all : $(SUBDIRS)


$(SUBDIRS):
	$(MAKE) -C $@

# Makefile dependencies for other Makefiles
exe: shared-object
shared-object : static-library
static-library : bootstrap




