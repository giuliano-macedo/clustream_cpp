
ALL:kernel.o clustream.o test

kernel.o:kernel.cpp kernel.hpp
	g++ kernel.cpp -c -o kernel.o
clustream.o:clustream.cpp clustream.hpp
	g++ clustream.cpp -c -o clustream.o
test:clustream.o kernel.o
	g++ clustream.o kernel.o main.cpp -o test
