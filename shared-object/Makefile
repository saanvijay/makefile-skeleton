include ../makefile.rules


CFLAGS += $(PIC)

SHARED-OBJECT = myshared-object.so
SRCS = $(wildcard *.cpp)
OBJS := $(patsubst %.cpp, objs/%.o, $(SRCS)) 


VPATH := $(OBJ_DIR) $(BIN_DIR)
 
.PHONY: all
all : $(SHARED-OBJECT)

$(BIN_DIR)/$(SHARED-OBJECT) : $(OBJS)
	@echo "--------- Creating $(notdir $@) ---------"
	mkdir -p ${@D}
	$(CC) $(SHARED) $(PIC) $(OFLAG) $@ $^
	@echo "============== DONE ====================="
	@echo ''


$(OBJ_DIR)/%.o : %.cpp
	$(cpp_compile_rule_body)

.PHONY: clean
clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR) $(SHARED-OBJECT)


