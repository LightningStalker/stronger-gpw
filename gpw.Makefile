# Makefile for password generator
# THVV 6/1/94
#

DEBUGARGS = -g
#COMPILER = xlC
COMPILER = g++
DICTIONARYFILE = /usr/share/dict/american-english
PREFIX = /usr/local

all : gpw loadtris
	echo gpw created, can delete loadtris

gpw : gpw.o
	$(COMPILER) $(DEBUGARGS) -o gpw gpw.o

trigram.h : loadtris
	./loadtris $(DICTIONARYFILE) | sed "s/, }/}/" > trigram.h

gpw.o : gpw.C trigram.h
	$(COMPILER) $(DEBUGARGS) -o gpw.o -c gpw.C

loadtris : loadtris.o
	$(COMPILER) $(DEBUGARGS) -o loadtris loadtris.o

loadtris.o : loadtris.C
	$(COMPILER) $(DEBUGARGS) -o loadtris.o -c loadtris.C

install :
	cp gpw $(PREFIX)/bin

clean : 
	rm gpw loadtris loadtris.o gpw.o # trigram.h
