PROGS =	pty
OBJS = main.o loop.o driver.o error.o ptyfork.o ttymodes.o ptyopen.o signalintr.o spipe.o writen.o
CFLAGS = -g -Wall

all:	pty

pty:	$(OBJS)
	$(CC) -Wall -g -o pty $(OBJS)

clean:
	rm -f pty *.o
