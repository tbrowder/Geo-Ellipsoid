PERLM := perl6-m
PERL  := perl6

#OPTS := --ll-exception
#OPTS := -c

.PHONY: test-e test-t run

test-e:
	( cd lib/Geo; $(PERLM) $(OPTS) Ellipsoid.pm6 )

run:
	( cd test; $(PERL) $(OPTS) test_ellipsoid.pl )

test-t:
	( cd test; $(PERLM) $(OPTS) test_ellipsoid.pl )
