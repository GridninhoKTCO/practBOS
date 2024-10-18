CC = gcc
CFLAGS = -fPIC -Iinclude
LDFLAGS = -shared
TARGET = libpractbos-json.so

SRC = src/practbos-json.c
OBJ = $(SRC:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(LDFLAGS) -o $@ $^

clean:
	rm -f $(OBJ) $(TARGET)

install:
	mkdir -p /usr/local/lib
	cp $(TARGET) /usr/local/lib
	mkdir -p /usr/local/include/practbos-json
	cp include/practbos-json.h /usr/local/include/practbos-json
