CC = gcc
CFLAGS = -fPIC -Iinclude
LDFLAGS = -shared
TARGET = libpractbos-text.so

SRC = src/practbos-text.c
OBJ = $(SRC:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(LDFLAGS) -o $@ $^

clean:
	rm -f $(OBJ) $(TARGET)

install:
	mkdir -p /usr/local/lib
	cp $(TARGET) /usr/local/lib
	mkdir -p /usr/local/include/practbos-text
	cp include/practbos-text.h /usr/local/include/practbos-text
