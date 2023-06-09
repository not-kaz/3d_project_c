CC = cc 
CF = -Wall -Wextra -Wmissing-prototypes -Wstrict-prototypes \
     -Wdeclaration-after-statement -Wmissing-declarations \
     -Wimplicit-function-declaration -std=c99 -pedantic \
     -Wshadow -Wdouble-promotion -Wconversion -Wformat \
     -Wformat-signedness -Wformat-extra-args \
     -Wpointer-arith -Wcast-qual
LF = -lSDL2 -lSDL2_image
DF = -DDEBUG_MODE
SC = main.c config.c
OB = out

all: $(SC)
	$(CC) -g -O0 $(CF) $(SC) $(LF) -o $(OB) $(DF)
