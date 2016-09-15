PERL6     := perl6
LIBPATH   := ../lib,./lib

# set below to 0 for no effect, 1 to die on first failure
EARLYFAIL := PERL6_TEST_DIE_ON_FAIL=1

.PHONY: test-funcs test test-orig bad good

default: test-funcs

TESTS     := t/*.t
BADTESTS  := bad-tests/*.t
GOODTESTS := good-tests/*.t

test-funcs:
	$(EARLYFAIL) PERL6LIB=$(LIBPATH) prove -v --exec=$(PERL6) t/99-exported-funcs.t
	

# the original test suite (i.e., 'make test')
test:
	for f in $(TESTS) ; do \
	    $(EARLYFAIL) PERL6LIB=$(LIBPATH) prove -v --exec=$(PERL6) $$f ; \
	done

bad:
	for f in $(BADTESTS) ; do \
	    $(EARLYFAIL) PERL6LIB=$(LIBPATH) prove -v --exec=$(PERL6) $$f ; \
	done

good:
	for f in $(GOODTESTS) ; do \
	    $(EARLYFAIL) PERL6LIB=$(LIBPATH) prove -v --exec=$(PERL6) $$f ; \
	done

test-orig:
	$(PERL) test/test_ellipsoid.pl > res.txt

	diff res.txt test/results.txt
