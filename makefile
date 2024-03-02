sim:
	make clean
	iverilog rtl/*.v sim/*.v -g2012 -Wall -o mips-tb.o
clean:
	rm -rf *.o