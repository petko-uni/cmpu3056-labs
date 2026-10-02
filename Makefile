# main.c
conway: life.o main.o
	gcc -o conway $^

%.o: %.c
	gcc -o $@ -c $^

install: conway
	sudo install -m 755 conway /usr/local/bin/conway

clean:
	rm -f conway
	rm -rf *.o
