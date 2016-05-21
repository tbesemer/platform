
export PLATFORM_ROOT := $(shell cd ../; pwd)
include ${PLATFORM_ROOT}/mk/global.mk

INCLUDES:=-I${PLATFORM_ROOT}/include

OBJLIST = t1.o t2.o

$(ODIR)/%.o: %.c
	${CC} -c ${INCLUDES} -o $@ $<
	$(SHELL) -ec '${CC} -MM ${INCLUDES} $< | sed '\"s/$*.o/${ODIR}\\/$*.o/\"' > $(ODIR)/$*.d'

$(BDIR)/t:	$(OBJ)
	@echo $(OBJ)
	${CC} -o $@ $^ 

-include $(wildcard $(ODIR)/*.d)

.PHONY: clean

clean:
	rm -f $(ODIR)/* $(BDIR)/*
