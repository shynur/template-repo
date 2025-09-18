SHELL = /bin/bash -O globstar
CXXFLAGS = -std=c++26 -Wpedantic -Wall -W -O0 -g3

.PHONY: clean
clean:
	rm -f   ./**/?*~
	rm -f  ./**/.?*~
	rm -f   ./**/\#?*\#
	rm -f  ./**/.\#?*
	rm -rf  bin
	rm -f  ./**/?*.el[cn]
	rm -f  ./**/?*.{so,dylib,dll}

%/:
	mkdir -p $@
	-chmod -R a+rwx $@

FORCE:
