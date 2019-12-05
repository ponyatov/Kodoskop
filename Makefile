
none:

NOW = $(shell date +%d%m%y)
REL = $(shell git rev-parse --short=4 HEAD)

MERGE  = Makefile README.md .gitignore distr doc

merge:
	git checkout master
	git checkout shadow -- $(MERGE)

release:
	git tag $(NOW)-$(REL)
	git push -v && git push -v --tags
	git checkout shadow
