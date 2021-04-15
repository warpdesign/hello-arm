# Makefile
all: hello

first: hello.o
	gcc -o $@ $+

first.o : hello.s
	as -o $@ $<

clean:
	rm -vf hello *.o