include ../makefile.rules


EXE = $(BIN_DIR)/myexe
SRCS = $(wildcard *.cpp)
OBJS := $(patsubst %.cpp, objs/%.o, $(SRCS)) 

VPATH := $(OBJ_DIR) $(BIN_DIR)

DEPS := $(OBJS:.o=.d)
 
.PHONY: all
all : $(EXE)

$(EXE) : $(OBJS)
	@echo "--------- Creating $(notdir $@) ---------"
	mkdir -p ${@D}
	$(CC) $(OFLAG) $@ $^ 
	@echo "============== DONE ====================="
	@echo ''


$(OBJ_DIR)/%.o : %.cpp
	$(cpp_compile_rule_body)

.PHONY: clean
clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR) $(EXE)

-include $(DEPS)
