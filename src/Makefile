all: libmath

export cpp_flags := -Wall -pedantic -g -fsanitize=address -fPIC

libmath: ${obj_dir}/libmath.o
	ar rcs ${release_dir}/libmath.a ${obj_dir}/libmath.o
	g++ ${cpp_flags} -shared -o ${release_dir}/libmath.so  ${obj_dir}/libmath.o

${obj_dir}/libmath.o: math.cpp
	g++ ${cpp_flags} -c math.cpp -o ${obj_dir}/libmath.o

