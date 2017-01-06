#!/usr/bin/make -f

all : kloak eventcap

kloak : src/main.c src/keycodes.c src/keycodes.h
	gcc src/main.c src/keycodes.c -o kloak -lm -lpthread

eventcap : src/eventcap.c
	gcc src/eventcap.c -o eventcap

clean :
	rm -rf kloak eventcap src/main.o src/eventcap.o

## genmkfile - Makefile - version 1.5

## This is a copy.
## master location:
## https://github.com/Whonix/genmkfile/blob/master/usr/share/genmkfile/Makefile

GENMKFILE_PATH ?= /usr/share/genmkfile
GENMKFILE_ROOT_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

export GENMKFILE_PATH
export GENMKFILE_ROOT_DIR

include $(GENMKFILE_PATH)/makefile-full
