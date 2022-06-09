RAKU     := raku
LIBPATH   := ./lib

# set below to 0 for no effect, 1 for debugging messages
DEBUG := GEO_ELLIPSOID_DEBUG=0

# set below to 0 for no effect, 1 to die on first failure
EARLYFAIL := RAKU_TEST_DIE_ON_FAIL=0

.PHONY: test-funcs test test-orig bad good

default: test

TESTS     := t/*.t
BADTESTS  := bad-tests/*.t
GOODTESTS := good-tests/*.t

test-funcs:
	$(DEBUG) $(EARLYFAIL) RAKULIB=$(LIBPATH) prove -v --exec=$(RAKU) t/99-exported-funcs.t


# the original test suite (i.e., 'make test')
test:
	for f in $(TESTS) ; do \
	    $(DEBUG) $(EARLYFAIL) RAKULIB=$(LIBPATH) prove -v --exec=$(RAKU) $$f ; \
	done

bad:
	for f in $(BADTESTS) ; do \
	    $(DEBUG) $(EARLYFAIL) RAKULIB=$(LIBPATH) prove -v --exec=$(RAKU) $$f ; \
	done

good:
	for f in $(GOODTESTS) ; do \
	    $(EARLYFAIL) RAKULIB=$(LIBPATH) prove -v --exec=$(RAKU) $$f ; \
	done

test-orig:
	$(RAKU) -Ilib test/test-ellipsoid.raku -t > test/res.txt
	diff test/res.txt test/results.txt > test/diff.log
