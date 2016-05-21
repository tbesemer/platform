$(ODIR)/%.o: %.c
	${CC} ${EXEC_CFLAGS} ${INCLUDES} -c -o $@ $<
	$(SHELL) -ec '${CC} ${EXEC_CFLAGS} ${INCLUDES} -MM $< | sed '\"s/$*.o/${ODIR}\\/$*.o/\"' > $(ODIR)/$*.d'

${EXEC_NAME}:   $(OBJ)
	${CC} -o $@ $^

-include $(wildcard $(ODIR)/*.d)

.PHONY: clean

clean:
	rm -f $(ODIR)/* $(BDIR)/*
