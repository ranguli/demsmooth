CC = gcc
LD = ld 

OBJS += smooth.o

LIBS += -L ../libdemo -lm
LIBS += -ldemo

CFLAGS += -I../libdemo/inc
CFLAGS += -g -Wall -Wextra
CFLAGS += -O0

all: demsmooth.exe

demsmooth.exe: $(OBJS)
	$(CC) $(OBJS) $(LIBS) -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f *.o demsmooth.exe
