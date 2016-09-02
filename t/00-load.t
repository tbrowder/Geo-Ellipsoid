# Test Geo::Ellipsoid load

use v6;
use Test;
use lib <./lib ../lib ../../lib>;

use Geo::Ellipsoid;

plan 32; # 33;

use-ok('Geo::Ellipsoid');

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

my $e5 = Geo::Ellipsoid.new();

# check public methods
for @Geo::Ellipsoid::public_methods -> $m {
  ok($e5.can($m), "public method '$m'");
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
