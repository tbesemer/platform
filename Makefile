export PLATFORM_ROOT := $(shell pwd)
include ${PLATFORM_ROOT}/mk/global.mk

SUBDIRS:= so exec

all: ${SUBDIRS}

${SUBDIRS}:
	make -C $@

.PHONY:	all ${SUBDIRS}

clean: 
	for dir in ${SUBDIRS}; do \
	make -C $$dir clean; \
	done

