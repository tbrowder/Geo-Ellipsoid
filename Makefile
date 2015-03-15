TEST_VERBOSE=0
TEST_TYPE=test_$(LINKTYPE)
TEST_FILE = test.pl
TEST_FILES = t/*.t
TESTDB_SW = -d

PERLM := perl6-m
PERL  := perl6

#OPTS := --ll-exception
#OPTS := -c

.PHONY: test test2 run

test-e:
	( cd lib/Geo; $(PERLM) $(OPTS) Ellipsoid.pm6 )

run:
	( cd test; $(PERL) $(OPTS) test_ellipsoid.pl )

test-t:
	( cd test; $(PERLM) $(OPTS) test_ellipsoid.pl )
