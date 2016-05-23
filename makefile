sources := $(shell find . | grep py$)

.PHONY: default test

default: test

test:
	python -m unittest discover
