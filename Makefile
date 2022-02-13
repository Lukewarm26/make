# Makefile
# Lucas Eifert
# COSC 3750 Spring 22
# Homework 3
# Modified 2/15/21
#
# Makefile to compile program to find an approximation of e
CC=gcc
CFLAGS=-Wall -g -I.
RM=/bin/rm -f
OBJS=approxe.o compute.o display.o prompt.o



output: ${OBJS}
	{$CC} OBJS -o output
prompt: prompt.c prompt.h
	{$CC} {$CFLAGS} -c prompt.c prompt
compute: compute.c compute.h
	{$CC} {$CFLAGS} -c compute.c compute
display: display.c display.h
	{$CC} {$CFLAGS} -c display.c display
approxe: approxe.c ${OBJS}
	{$CC} {$CFLAGS} -c approxe.c approxe
tidy:
	${RM} *.o
clean: tidy
	${RM} output
