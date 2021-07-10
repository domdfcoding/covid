CC=gcc
CFLAGS=-I.
BIN=covid_19.0-1/usr/local/bin

covid: src/covid.c
	$(CC) -o $(BIN)/covid src/covid.c

.PHONY: clean

clean:
	rm $(BIN)/covid

deb: covid
	dpkg-deb --build covid_19.0-1
