INC=
LIB=
 
CC=gcc
CC_FLAG=-Wall
 
PRG=rinetd
OBJ=src/match.o \
    src/rinetd.o \
	src/ae.o \

$(PRG):$(OBJ)
	$(CC) $(INC) $(LIB) -o $@ $(OBJ)
	
.SUFFIXES: .c .o .cpp
.cpp.o:
	$(CC) $(CC_FLAG) $(INC) -c $*.cpp -o $*.o
 
.PRONY:clean
clean:
	@echo "clean"
	rm -f $(OBJ) $(PRG)
