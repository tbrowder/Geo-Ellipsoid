PERL6  := perl6
LIBPATH := ../lib,./lib

.PHONY: test-funcs test torig bad

default: test-funcs

TESTS    := t/*.t
BADTESTS := bad-tests/*.t

test-funcs:
	PERL6LIB=$(LIBPATH) prove -v --exec=$(PERL6) t/99-exported-funcs.t
	

# the original test suite (i.e., 'make test')
test:
	for f in $(TESTS) ; do \
	    PERL6LIB=$(LIBPATH) prove -v --exec=$(PERL6) $$f ; \
	done

bad:
	for f in $(BADTESTS) ; do \
	    PERL6LIB=$(LIBPATH) prove -v --exec=$(PERL6) $$f ; \
	done

test-orig:
	$(PERL) test/test_ellipsoid.pl > res.txt
	diff res.txt test/results.txt
