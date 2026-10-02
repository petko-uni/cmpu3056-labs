# main.c
conway: life.c main.c
	gcc -o conway $^

install: conway
	sudo install -m 755 conway /usr/local/bin/conway

clean:
	rm -f conway
