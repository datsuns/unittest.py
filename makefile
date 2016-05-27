.PHONY: default test auto_test setup

default: auto_test

test:
	PYTHONDONTWRITEBYTECODE=1 python -m unittest discover

auto_test:
	filewatcher "**/*.py" "make test"

setup:
	sudo pip install testtools
	gem install filewatcher

