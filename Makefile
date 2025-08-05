CC = gcc
CFLAGS = -Wall -Werror -g
TARGET = cm6206ctl
LIBS = -lhidapi-libusb
SRC = cm6206ctl.c

all: $(TARGET)

$(TARGET):
	$(CC) $(CFLAGS) -o $@ $(SRC) $(LIBS)

.PHONY: clean
clean:
	rm -f $(TARGET)