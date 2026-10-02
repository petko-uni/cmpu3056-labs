# main.c
conway: main.c
	gcc -o conway main.c

install: conway
	sudo install -m 755 conway /usr/local/bin/conway

clean:
	rm -f conway