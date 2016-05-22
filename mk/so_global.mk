$(ODIR)/%.o: %.c
	${CC} -fPIC ${SO_CFLAGS} ${INCLUDES} -c -o $@ $<
	$(SHELL) -ec '${CC} -fPIC ${SO_CFLAGS} ${INCLUDES} -MM $< | sed '\"s/$*.o/${ODIR}\\/$*.o/\"' > $(ODIR)/$*.d'

SO_NAME=${SDIR}/${SO}.so

${SO_NAME}:   $(OBJ)
	${CC} -shared ${SO_CLFAGS} -o $@ $^ ${SO_LDFLAGS}

-include $(wildcard $(ODIR)/*.d)

.PHONY: clean

clean:
	rm -f $(ODIR)/* $(SDIR)/*
