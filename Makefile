OBJS = src/oclFeatureExt.o
CC = g++
DEBUG = -g -DDEBUG
LLVM_CONFIG = llvm-config

CPPFLAGS = -Wall -c `$(LLVM_CONFIG) --cxxflags | sed 's/-I/-isystem /g'` -std=c++17 ${DEBUG} -Iinclude -fexceptions
LDFLAGS = -Wall `$(LLVM_CONFIG) --ldflags`
LIBS = `$(LLVM_CONFIG) --libs core irreader support analysis --system-libs`

EXEC = src/oclFeatureExt.out

all : $(EXEC)

$(EXEC) : $(OBJS)
	$(CC) $(OBJS) -o $(EXEC) $(LDFLAGS) $(LIBS)

$(OBJS) : %.o : %.cpp
	$(CC) $(CPPFLAGS) $< -o $@

clean:
	rm -f src/*.o *.o *~ $(EXEC)
