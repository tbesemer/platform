$(ODIR)/%.o: %.c
	${CC} ${AR_CFLAGS} ${INCLUDES} -c -o $@ $<
	$(SHELL) -ec '${CC} ${AR_CFLAGS} ${INCLUDES} -MM $< | sed '\"s/$*.o/${ODIR}\\/$*.o/\"' > $(ODIR)/$*.d'

AR_NAME=${ARDIR}/${AR_LIB}.a

${AR_NAME}:   $(OBJ)
	${AR} cr ${AR_CLFAGS} -o $@ $^ 

-include $(wildcard $(ODIR)/*.d)

.PHONY: clean

clean:
	rm -f $(ODIR)/* $(ARDIR)/*
