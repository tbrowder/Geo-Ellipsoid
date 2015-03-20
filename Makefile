PERLM := perl6-m
PERL  := perl6

#OPTS := --ll-exception
#OPTS := -c

.PHONY: test-e test-t run test-p test-m test-full

#default: test-m test-p
#default: test-e run
default: test-full

# the original test suite (i.e., 'make test')
test-full:
	( $(PERL) t/*.t )

test-p:
	( $(PERL) $(OPTS) T.pl )

test-m:
	( $(PERLM) $(OPTS) T.pm )

test-e:
	( cd lib/Geo; $(PERLM) $(OPTS) Ellipsoid.pm )

run:
	( cd test; $(PERL) $(OPTS) test_ellipsoid.pl )

run-s:
	( cd test; $(PERL) $(OPTS) test_ellipsoid.pl -s)

test-t:
	( cd test; $(PERLM) $(OPTS) test_ellipsoid.pl )
