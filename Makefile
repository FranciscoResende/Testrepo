CFLAGS  := -Wall -Wextra -O2
LDFLAGS := -L. -lmmap-file 

main: main.c libmmap-file.so
	$(CC) $(CFLAGS) $(LDFLAGS) $< -o $@

libmmap-file.so: mmap-file.c
	$(CC) $(CFLAGS) -fPIC -shared $< -o $@
