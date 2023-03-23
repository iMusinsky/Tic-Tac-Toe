CC=gcc
CFLAGS=-Wall

PROJECT=app
BIN_DIR=bin

SRC=*.c

all:
	mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) $(SRC) -o $(BIN_DIR)/$(PROJECT)

clean:
	rm -rf $(BIN_DIR) *.sh

sh:
	echo 'cd bin/\n./$(PROJECT)' > start.sh && chmod 755 start.sh

re: clean all sh

.PHONY: re clean all sh
