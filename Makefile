include makefile.rules


EXE = myexe
SRCS = $(wildcard *.cpp)
OBJS = $(SRCS:.cpp=.o)

 
.PHONY: all
all : $(EXE)

$(EXE) : $(OBJS)
	$(CC) $(OFLAG) $@ $^


%.o : %.cpp
	$(cpp_compile_rule_body)

.PHONY: clean
clean:
	rm -rf *.o $(EXE)


