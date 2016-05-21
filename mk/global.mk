CC=gcc
BDIR=bin
ODIR=obj
OBJ= $(patsubst %,$(ODIR)/%,$(OBJLIST))

EXEC_CFLAGS=-flto
INCLUDES:=-I${PLATFORM_ROOT}/include

