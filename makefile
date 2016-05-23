sources := $(shell find . | grep py$)

default: test

test: $(sources)
	python -m unittest discover
