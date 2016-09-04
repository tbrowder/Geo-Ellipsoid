# Test Geo::Ellipsoid at

use v6;
use Test;
use lib <./lib ../lib ../../lib>;

use Geo::Ellipsoid ':extra';

plan 1;

# This series of tests is for the functions now-exported from the class.
is $twopi, '', "twice pi";
is $halfpi, '', "one-half pi";

my @degs = <0 30 45 90 135 180 225 270 315 360 405>;
my @rads = <0 1 2 3 4 5 6 7 8>;

for @degs -> $deg {
    is deg2rad($deg), '', "radians for $deg degrees";
}

for @rads -> $rad {
    is rad2deg($rad), '', "degrees for $rad radians";
}
 


