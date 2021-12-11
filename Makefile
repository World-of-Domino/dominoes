PROJECT = dominoes
CC = gcc
CFLAGS = -Wall
LDFLAGS = -s
PREFIX = /usr/local
SRCS = src
INSTALL = install
RM = rm -f

.PHONY: all clean install

all: $(PROJECT)

$(PROJECT): $(SRCS)/game.c $(SRCS)/main.c $(SRCS)/move.c $(SRCS)/player.c $(SRCS)/questions.c $(SRCS)/random.c $(SRCS)/sleep.c $(SRCS)/stack.c $(SRCS)/table.c $(SRCS)/tile.c
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

clean:
	$(RM) $(PROJECT) $(PROJECT).exe

install: $(PROJECT)
	$(INSTALL) -d $(PREFIX)/games
	$(INSTALL) -m 0755 $(PROJECT) $(PREFIX)/games
	$(INSTALL) -d $(PREFIX)/share/doc/$(PROJECT)
	$(INSTALL) -m 0644 LICENSE README.md $(PREFIX)/share/doc/$(PROJECT)
