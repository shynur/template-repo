SHELL = /bin/bash -O globstar
export CXXFLAGS = -std=c++26 -Wpedantic -Wall -W -O0 -g3

.PHONY: all
all:

.PHONY: clean
clean:
	rm -f   ./**/?*~   ./**/.?*~   ./**/\#?*\#   ./**/.\#?*
	rm -rf  bin
	rm -f  ./**/?*.el[cn]
	rm -f  ./**/?*.{so,dylib,dll}

%/:
	mkdir -p $@
	-chmod -R a+rwx $@

FORCE:
