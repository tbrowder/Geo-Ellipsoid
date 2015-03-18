PERLM := perl6-m
PERL  := perl6

#OPTS := --ll-exception
#OPTS := -c

.PHONY: test-e test-t run test-p test-m

#default: test-m test-p
#default: test-e run
default: run

test-p:
	( $(PERL) $(OPTS) T.pl )

test-m:
	( $(PERLM) $(OPTS) T.pm )

test-e:
	( cd lib/Geo; $(PERLM) $(OPTS) Ellipsoid.pm )

run:
	( cd test; $(PERL) $(OPTS) test_ellipsoid.pl )

test-t:
	( cd test; $(PERLM) $(OPTS) test_ellipsoid.pl )
