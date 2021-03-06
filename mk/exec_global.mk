$(ODIR)/%.o: %.c
	${CC} ${EXEC_CFLAGS} ${INCLUDES} -c -o $@ $<
	$(SHELL) -ec '${CC} ${EXEC_CFLAGS} ${INCLUDES} -MM $< | sed '\"s/$*.o/${ODIR}\\/$*.o/\"' > $(ODIR)/$*.d'

EXEC_NAME=${BDIR}/${EXEC}

${EXEC_NAME}:   $(OBJ)
	${CC} ${EXEC_CFLAGS} -o $@ $^ ${EXEC_LDFLAGS} -L ${PLATFORM_ROOT}/ar/ar -lar_test

-include $(wildcard $(ODIR)/*.d)

.PHONY: clean

clean:
	rm -f $(ODIR)/* $(BDIR)/*
