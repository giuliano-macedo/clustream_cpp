
ALL:kernel.o clustream.o test

kernel.o:kernel.cpp kernel.hpp
	g++ -O3  kernel.cpp -c -o kernel.o
clustream.o:clustream.cpp clustream.hpp
	g++ -O3  clustream.cpp -c -o clustream.o
test:clustream.o kernel.o main.cpp
	g++ -O3  -g --std=c++17 clustream.o kernel.o main.cpp -o test

clean:
	rm -rf clustream.o kernel.o test