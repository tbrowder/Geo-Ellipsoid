PERL  := perl6

.PHONY: test test-orig

default: test

TESTS := t/*.t

# the original test suite (i.e., 'make test')
test:
	for f in $(TESTS) ; do \
	  $(PERL) $$f ; \
	done

test-orig:
	$(PERL) test/test_ellipsoid.pl > res.txt
	diff res.txt test/results.txt
