include ../makefile.rules


CFLAGS += $(PIC)

SHARED-OBJECT = $(BIN_DIR)/myshared-object.so
SRCS = $(wildcard *.cpp)
OBJS := $(patsubst %.cpp, objs/%.o, $(SRCS)) 


VPATH := $(OBJ_DIR) $(BIN_DIR)

DEPS := $(OBJS:.o=.d)
 
.PHONY: all
all : $(SHARED-OBJECT)

$(SHARED-OBJECT) : $(OBJS)
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


-include $(DEPS)
