PERL  := perl6

.PHONY: test test-orig

default: test

TESTS := t/*.t

# the original test suite (i.e., 'make test')
test:
	for i in $(TESTS) ; do \
	  $(PERL) $$i ; \
	done

test-orig:
	$(PERL) test/test_ellipsoid.pl
