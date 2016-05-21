
export PLATFORM_ROOT := $(shell cd ../; pwd)
include ${PLATFORM_ROOT}/mk/global.mk


OBJLIST = t1.o t2.o

$(ODIR)/%.o: %.c
	${CC} -c -o $@ $<

$(BDIR)/t:	$(OBJ)
	${CC} -o $@ $^ 

.PHONY: clean

clean:
	rm -f $(ODIR)/* $(BDIR)/*
