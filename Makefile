.PHONY:all clean
VRATH = SRC INCLUD
CC=g++
CFLAGS=-Wall -Werror
SD=src/
OD=build/
EXECUTABLE=bin/geometry.exe
all: $(EXECUTABLE)

$(EXECUTABLE): $(OD)geometry.o
	$(CC) $(CFLAGS) -o $(EXECUTABLE) $(OD)geometry.o -lm
$(OD)geometry.o: $(SD)geometry.c
	$(CC) $(CFLAGS) -c -o $(OD)geometry.o $(SD)geometry.c -lm
clean:
	rm -rf $(EXECUTABLE) $(OD)*.o
