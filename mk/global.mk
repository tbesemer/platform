ifeq (${CC},cc)
CC=gcc
endif
BDIR=bin
ODIR=obj
OBJ= $(patsubst %,$(ODIR)/%,$(OBJLIST))

ifeq ($(DEBUG),1)
EXEC_CFLAGS=-flto -g ${CFLAGS}
SO_CFLAGS:=-g ${CFLAGS}
AR_CFLAGS:=-g ${CFLAGS}
else
EXEC_CFLAGS=-flto ${CFLAGS}
SO_CFLAGS:= ${CFLAGS}
AR_CFLAGS:= ${CFLAGS}
endif

TARG_LIBS+=
EXEC_LDFLAGS=-Wl,--whole-archive $(TARG_LIBS) -Wl,--no-whole-archive
SO_LDFLAGS=-Wl,--whole-archive $(TARG_LIBS) -Wl,--no-whole-archive

INCLUDES+=-I${PLATFORM_ROOT}/include

