include ../makefile.rules


EXE = myexe
SRCS = $(wildcard *.cpp)
OBJS := $(patsubst %.cpp, objs/%.o, $(SRCS)) 

VPATH := $(OBJ_DIR) $(BIN_DIR)

 
.PHONY: all
all : $(EXE)

$(BIN_DIR)/$(EXE) : $(OBJS)
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


