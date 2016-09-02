# Test Geo::Ellipsoid load

use v6;
use Test;
use lib <./lib ../lib ../../lib>;

use Geo::Ellipsoid;

# This original Perl 5 test used the following test functions (the
# resulting Perl 6 versions are shown after the fat comma):
#
#   isa_ok => isa-ok
#   can_ok => can-ok
#
#  From the Perl 5 test file:
#    use Test::Number::Delta relative => 1e-6;
#  which translates ro:
my $rel-tol = 1e-6;

plan 32; # 33;

BEGIN { use-ok('Geo::Ellipsoid'); }
my $e0 = Geo::Ellipsoid.new();
isa-ok($e0, 'Geo::Ellipsoid');
my $e1 = Geo::Ellipsoid.new(units => 'degrees');
isa-ok($e1, 'Geo::Ellipsoid');
my $e2 = Geo::Ellipsoid.new(distance_units => 'foot');
isa-ok($e2, 'Geo::Ellipsoid');
my $e3 = Geo::Ellipsoid.new(bearing => 1);
isa-ok($e3, 'Geo::Ellipsoid');
my $e4 = Geo::Ellipsoid.new(longitude => 1);
isa-ok($e4, 'Geo::Ellipsoid');

can-ok( 'Geo::Ellipsoid', 'new' );
can-ok( 'Geo::Ellipsoid', 'set_units' );
can-ok( 'Geo::Ellipsoid', 'set_distance_unit' );
can-ok( 'Geo::Ellipsoid', 'set_ellipsoid' );
can-ok( 'Geo::Ellipsoid', 'set_custom_ellipsoid' );
can-ok( 'Geo::Ellipsoid', 'set_longitude_symmetric' );
can-ok( 'Geo::Ellipsoid', 'set_bearing_symmetric' );
can-ok( 'Geo::Ellipsoid', 'set_defaults' );
can-ok( 'Geo::Ellipsoid', 'scales' );
can-ok( 'Geo::Ellipsoid', 'range' );
can-ok( 'Geo::Ellipsoid', 'bearing' );
can-ok( 'Geo::Ellipsoid', 'at' );
can-ok( 'Geo::Ellipsoid', 'to' );
can-ok( 'Geo::Ellipsoid', 'displacement' );
can-ok( 'Geo::Ellipsoid', 'location' );

=begin pod

my $e5 = Geo::Ellipsoid.new();

# check public methods
for @Geo::Ellipsoid::public_methods -> $m {
  can-ok($e5.can($m), "public method '$m'");
}

# check rw attributes
for @Geo::Ellipsoid::rw_attributes -> $a {
  my $val = $e5."$a"();
  if (defined $val) {
    ok(True, "attribute '$a'");
  }
  else {
    ok(False, "attribute '$a'");
  }
}

=end pod
