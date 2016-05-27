.PHONY: default test auto_test setup

default: auto_test

test:
	python -m unittest discover

auto_test:
	filewatcher "**/*.py" "make test"

setup:
	sudo pip install testtools
	gem install filewatcher

