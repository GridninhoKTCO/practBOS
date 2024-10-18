CC = gcc
CFLAGS = -I../libpractbos/include -I../libpractbos-text/include -I../libpractbos-json/include
LDFLAGS = -L../libpractbos -L../libpractbos-text -L../libpractbos-json
LIBS = -lpractbos -lpractbos-text -lpractbos-json

TARGET = practbos-client

SRC = src/practbos-client.c
OBJ = $(SRC:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS) $(LIBS)

clean:
	rm -f $(OBJ) $(TARGET)

install:
	cp $(TARGET) /usr/local/bin
