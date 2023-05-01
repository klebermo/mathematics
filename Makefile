CC := g++
CCFLAGS := -Wall -Wextra -Werror -std=c++11 -g

all: libmath

libmath: math.o
	$(CC) $(CCFLAGS) -shared -o libmath.so math.o
	ar rcs libmath.a math.o

math.o: math.cpp
	$(CC) $(CCFLAGS) -fPIC -c math.cpp

clean:
	rm -f *.o *.so *.a
