OBJS = intrgba.o example.o
CFLAGS = -Wall -O2 -std=c99 -pedantic

example: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS)

c: clean

clean:
	rm *.o example