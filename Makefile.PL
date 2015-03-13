

use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME         => 'Geo::Ellipsoid',
    VERSION_FROM => 'lib/Geo/Ellipsoid.pm', # finds \$VERSION
    AUTHOR       => 'Jim Gibson (Jim@Gibson.org)',
    ABSTRACT     => 'Accurate latitude/longitude calculations',
    PREREQ_PM    => {
                     'Test::Simple' => 0.44,
                     'Test::Number::Delta' => 0.16, 
		     'Math::Trig' => 1.03,
		     'Scalar::Util' => 1.19,
		     'Carp' => 1.04,
                    },
);
