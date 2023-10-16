CC = clang
CFLAGS = -Wall
LDFLAGS = -lm $(shell pkg-config --cflags --libs libpipewire-0.3)

ENTRY = main.c
OUT = out

all: $(ENTRY)

$(ENTRY):
	$(CC) $(CFLAGS) $(ENTRY) -o $(OUT) $(LDFLAGS)
	./$(OUT)

clean:
	rm -f $(OUT)

build:
	$(CC) $(CFLAGS) $(ENTRY) -o $(OUT) $(LDFLAGS)

run:
	./$(OUT)

start:
	$(CC) $(CFLAGS) $(ENTRY) -o $(OUT) $(LDFLAGS)
	./$(OUT)
