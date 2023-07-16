CC= g++ -std=c++11
THREAD=-lpthread
CFLAGS= -Wall  -O3

Huffman: Huffman1.cpp
	$(CC) $(CFLAGS)  -o Huffman1.out Huffman1.cpp     

HuffmanMulti: Huffman2Multithreadv2.cpp
	$(CC) $(CFLAGS) Huffman2Multithreadv2.cpp -o HuffmanMultithreadv2.out    $(THREAD) 

HuffmanFast: HuffmanFastFlow.cpp
	$(CC) $(CFLAGS) HuffmanFastFlow.cpp -o HuffmanFastFlow.out    $(THREAD)

HuffmanTemp: Huffman1diffTemp.cpp
	$(CC) $(CFLAGS) Huffman1diffTemp.cpp -o Huffman1diffTemp.out    $(THREAD)

HuffmanThreadTemp: HuffmanthreadTemp.cpp
	$(CC) $(CFLAGS) HuffmanthreadTemp.cpp -o HuffmanthreadTemp.out    $(THREAD)

HuffmanFastTemp: HuffmanFastTemp.cpp
	$(CC) $(CFLAGS) HuffmanFastTemp.cpp -o HuffmanFastTemp.out    $(THREAD)	


all: huffman1 HuffmanMulti HuffmanFast

script: Huffman HuffmanMulti HuffmanFast
	./script.sh

scriptfast: Huffman HuffmanMulti HuffmanFast
	./scriptfast.sh


cleanall:
	rm -f Huffman1.out HuffmanMultithreadv2.out HuffmanFastFlow.out