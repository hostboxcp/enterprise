CC=gcc
BINDIR=build
SRCDIR=src
ARCH := $(shell arch)

all: agency install personal mailonly webhost

.PHONY: release
release:
	bash packaging/release.sh

clean:
	@echo "Cleaning up..."
	rm -rf $(BINDIR)/*
