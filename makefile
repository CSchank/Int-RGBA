OBJS = intrgba.o example.o

example: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS)

c: clean

clean:
	rm *.o example