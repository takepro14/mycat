CC = gcc
CFLAGS = -Wall -Wextra -std=c11
SRCDIR = src
BINDIR = bin
TARGET = $(BINDIR)/mycat
SOURCES = $(SRCDIR)/main.c $(SRCDIR)/mycat.c

all: prepare $(TARGET)

$(TARGET): $(SOURCES)
	$(CC) $(CFLAGS) -o $(TARGET) $(SOURCES)

prepare:
	mkdir -p $(BINDIR)

clean:
	rm -rf $(BINDIR)
