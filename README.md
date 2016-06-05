NAME:
    Geo::Ellipsoid - Longitude and latitude calculations using an ellipsoid
                     model.

INSTALLATION

To install this module, run the following commands:

    panda install Geo::Ellipsoid

TESTING

1. To run the test suite:

   $ make test

2. To run an individual test:

   $ perl6 t/test-filename.t

3. To compare the results of this module to the CPAN Perl 5 version:

   $ make test-orig > res.txt
   $ diff res.txt test/results.txt

RELEASE NOTES

This is version 1.0, the initial port of the CPAN Perl 5 version to
Perl 6.

RELEASE NOTES (from the original CPAN version)

This module is a port of existing Fortran subroutines to Perl.

COPYRIGHT AND LICENCE

Copyright (C) 2015-2016 Tom Browder <tom.browder@gmail.com>
Copyright (C) 2005-2008 Jim Gibson

This program is free software; you can redistribute it or modify it
under the same terms as Perl itself.
