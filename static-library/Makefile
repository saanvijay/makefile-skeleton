include ../makefile.rules


STATIC_LIBRARY = $(BIN_DIR)/mylib.a
SRCS = $(wildcard *.cpp)
OBJS := $(patsubst %.cpp, objs/%.o, $(SRCS)) 

VPATH := $(OBJ_DIR) $(BIN_DIR)
 
.PHONY: all
all : $(STATIC_LIBRARY)

$(STATIC_LIBRARY) : $(OBJS)
	@echo "--------- Creating $(notdir $@) ---------"
	mkdir -p ${@D}
	$(AR) $(AR_FLAGS) $@ $^
	@echo "============== DONE ====================="
	@echo ''


$(OBJ_DIR)/%.o : %.cpp
	$(cpp_compile_rule_body)

.PHONY: clean
clean:
	rm -rf $(BIN_DIR) $(OBJ_DIR) $(STATIC_LIBRARY)


