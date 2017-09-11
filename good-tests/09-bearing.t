# Test Geo::Ellipsoid bearing

use v6;
use Test;

plan 432;

use Geo::Ellipsoid;

# This original Perl 5 test used the following test functions (the
# resulting Perl 6 versions are shown after the fat comma):
#
#   delta_within => is-approx($a, $b, :abs-tol<?>)
#
#  From the Perl 5 test file:
#    use Test::Number::Delta relative => 1e-6;
#  which translates to:
my $rel-tol = 1e-6;

my $e_pos = Geo::Ellipsoid.new(units=>'degrees');
my $e_sym = Geo::Ellipsoid.new(units=>'degrees',bearing_sym=>True);
my ($azp,$azs);

$azp = $e_pos.bearing(-88.000000, 1.000000, -88.000000, 90.000000);
is-approx($azp, 134.482545961512, :abs-tol<0.1>); #delta_within($azp, 134.482545961512, 0.1);

$azs = $e_sym.bearing(-88.000000,1.000000,-88.000000,90.000000);
is-approx($azs, 134.482545961512, :abs-tol<0.1>); #delta_within($azs, 134.482545961512, 0.1);

$azp = $e_pos.bearing(-88.000000,1.000000,-88.000000,179.000000);
is-approx($azp, 178.999390582928, :abs-tol<0.1>); #delta_within($azp, 178.999390582928, 0.1);

$azs = $e_sym.bearing(-88.000000,1.000000,-88.000000,179.000000);
is-approx($azs, 178.999390582928, :abs-tol<0.1>); #delta_within($azs, 178.999390582928, 0.1);

#say "DEBUG exit"; exit;

$azp = $e_pos.bearing(-88.000000,1.000000,-88.000000,268.000000);
is-approx($azp, 223.517433140781, :abs-tol<0.1>); #delta_within($azp, 223.517433140781, 0.1);

$azs = $e_sym.bearing(-88.000000,1.000000,-88.000000,268.000000);
is-approx($azs, -136.482566859219, :abs-tol<0.1>); #delta_within($azs, -136.482566859219, 0.1);

$azs = $e_sym.bearing(-88.000000,1.000000,0.000000,1.000000);
is-approx($azs, 0, :abs-tol<0.1>); #delta_within($azs, 0, 0.1);

$azp = $e_pos.bearing(-88.000000,1.000000,0.000000,90.000000);
is-approx($azp, 89.011158607559, :abs-tol<0.1>); #delta_within($azp, 89.011158607559, 0.1);

$azs = $e_sym.bearing(-88.000000,1.000000,0.000000,90.000000);
is-approx($azs, 89.011158607559, :abs-tol<0.1>); #delta_within($azs, 89.011158607559, 0.1);

$azp = $e_pos.bearing(-88.000000,1.000000,0.000000,179.000000);
is-approx($azp, 177.999150742584, :abs-tol<0.1>); #delta_within($azp, 177.999150742584, 0.1);

$azs = $e_sym.bearing(-88.000000,1.000000,0.000000,179.000000);
is-approx($azs, 177.999150742584, :abs-tol<0.1>); #delta_within($azs, 177.999150742584, 0.1);

$azp = $e_pos.bearing(-88.000000,1.000000,0.000000,268.000000);
is-approx($azp, 266.991287566797, :abs-tol<0.1>); #delta_within($azp, 266.991287566797, 0.1);

$azs = $e_sym.bearing(-88.000000,1.000000,0.000000,268.000000);
is-approx($azs, -93.0087124332033, :abs-tol<0.1>); #delta_within($azs, -93.0087124332033, 0.1);

$azs = $e_sym.bearing(-88.000000,1.000000,88.000000,1.000000);
is-approx($azs, 0, :abs-tol<0.1>); #delta_within($azs, 0, 0.1);

$azp = $e_pos.bearing(-88.000000,1.000000,88.000000,90.000000);
is-approx($azp, 44.5248574511054, :abs-tol<0.1>); #delta_within($azp, 44.5248574511054, 0.1);

$azs = $e_sym.bearing(-88.000000,1.000000,88.000000,90.000000);
is-approx($azs, 44.5248574511054, :abs-tol<0.1>); #delta_within($azs, 44.5248574511054, 0.1);

$azp = $e_pos.bearing(-88.000000,1.000000,88.000000,179.000000);
is-approx($azp, 89.011158607592, :abs-tol<0.1>); #delta_within($azp, 89.011158607592, 0.1);

$azs = $e_sym.bearing(-88.000000,1.000000,88.000000,179.000000);
is-approx($azs, 89.011158607592, :abs-tol<0.1>); #delta_within($azs, 89.011158607592, 0.1);

$azp = $e_pos.bearing(-88.000000,1.000000,88.000000,268.000000);
is-approx($azp, 313.474906296863, :abs-tol<0.1>); #delta_within($azp, 313.474906296863, 0.1);

$azs = $e_sym.bearing(-88.000000,1.000000,88.000000,268.000000);
is-approx($azs, -46.5250937031367, :abs-tol<0.1>); #delta_within($azs, -46.5250937031367, 0.1);

$azp = $e_pos.bearing(-88.000000,90.000000,-88.000000,1.000000);
is-approx($azp, 225.517454038488, :abs-tol<0.1>); #delta_within($azp, 225.517454038488, 0.1);

$azs = $e_sym.bearing(-88.000000,90.000000,-88.000000,1.000000);
is-approx($azs, -134.482545961512, :abs-tol<0.1>); #delta_within($azs, -134.482545961512, 0.1);

$azp = $e_pos.bearing(-88.000000,90.000000,-88.000000,179.000000);
is-approx($azp, 134.482545961512, :abs-tol<0.1>); #delta_within($azp, 134.482545961512, 0.1);

$azs = $e_sym.bearing(-88.000000,90.000000,-88.000000,179.000000);
is-approx($azs, 134.482545961512, :abs-tol<0.1>); #delta_within($azs, 134.482545961512, 0.1);

$azp = $e_pos.bearing(-88.000000,90.000000,-88.000000,268.000000);
is-approx($azp, 178.999390582928, :abs-tol<0.1>); #delta_within($azp, 178.999390582928, 0.1);

$azs = $e_sym.bearing(-88.000000,90.000000,-88.000000,268.000000);
is-approx($azs, 178.999390582928, :abs-tol<0.1>); #delta_within($azs, 178.999390582928, 0.1);

$azp = $e_pos.bearing(-88.000000,90.000000,0.000000,1.000000);
is-approx($azp, 270.988841392441, :abs-tol<0.1>); #delta_within($azp, 270.988841392441, 0.1);

$azs = $e_sym.bearing(-88.000000,90.000000,0.000000,1.000000);
is-approx($azs, -89.011158607559, :abs-tol<0.1>); #delta_within($azs, -89.011158607559, 0.1);

$azs = $e_sym.bearing(-88.000000,90.000000,0.000000,90.000000);
is-approx($azs, 0, :abs-tol<0.1>); #delta_within($azs, 0, 0.1);

$azp = $e_pos.bearing(-88.000000,90.000000,0.000000,179.000000);
is-approx($azp, 89.011158607559, :abs-tol<0.1>); #delta_within($azp, 89.011158607559, 0.1);

$azs = $e_sym.bearing(-88.000000,90.000000,0.000000,179.000000);
is-approx($azs, 89.011158607559, :abs-tol<0.1>); #delta_within($azs, 89.011158607559, 0.1);

$azp = $e_pos.bearing(-88.000000,90.000000,0.000000,268.000000);
is-approx($azp, 177.999150742584, :abs-tol<0.1>); #delta_within($azp, 177.999150742584, 0.1);

$azs = $e_sym.bearing(-88.000000,90.000000,0.000000,268.000000);
is-approx($azs, 177.999150742584, :abs-tol<0.1>); #delta_within($azs, 177.999150742584, 0.1);

$azp = $e_pos.bearing(-88.000000,90.000000,88.000000,1.000000);
is-approx($azp, 315.475142548895, :abs-tol<0.1>); #delta_within($azp, 315.475142548895, 0.1);

$azs = $e_sym.bearing(-88.000000,90.000000,88.000000,1.000000);
is-approx($azs, -44.5248574511054, :abs-tol<0.1>); #delta_within($azs, -44.5248574511054, 0.1);

$azs = $e_sym.bearing(-88.000000,90.000000,88.000000,90.000000);
is-approx($azs, 0, :abs-tol<0.1>); #delta_within($azs, 0, 0.1);

$azp = $e_pos.bearing(-88.000000,90.000000,88.000000,179.000000);
is-approx($azp, 44.5248574511054, :abs-tol<0.1>); #delta_within($azp, 44.5248574511054, 0.1);

$azs = $e_sym.bearing(-88.000000,90.000000,88.000000,179.000000);
is-approx($azs, 44.5248574511054, :abs-tol<0.1>); #delta_within($azs, 44.5248574511054, 0.1);

$azp = $e_pos.bearing(-88.000000,90.000000,88.000000,268.000000);
is-approx($azp, 89.011158607592, :abs-tol<0.1>); #delta_within($azp, 89.011158607592, 0.1);

$azs = $e_sym.bearing(-88.000000,90.000000,88.000000,268.000000);
is-approx($azs, 89.011158607592, :abs-tol<0.1>); #delta_within($azs, 89.011158607592, 0.1);

$azp = $e_pos.bearing(-88.000000,179.000000,-88.000000,1.000000);
is-approx($azp, 181.000609417072, :abs-tol<0.1>); #delta_within($azp, 181.000609417072, 0.1);

$azs = $e_sym.bearing(-88.000000,179.000000,-88.000000,1.000000);
is-approx($azs, -178.999390582928, :abs-tol<0.1>); #delta_within($azs, -178.999390582928, 0.1);

$azp = $e_pos.bearing(-88.000000,179.000000,-88.000000,90.000000);
is-approx($azp, 225.517454038488, :abs-tol<0.1>); #delta_within($azp, 225.517454038488, 0.1);

$azs = $e_sym.bearing(-88.000000,179.000000,-88.000000,90.000000);
is-approx($azs, -134.482545961512, :abs-tol<0.1>); #delta_within($azs, -134.482545961512, 0.1);

$azp = $e_pos.bearing(-88.000000,179.000000,-88.000000,268.000000);
is-approx($azp, 134.482545961512, :abs-tol<0.1>); #delta_within($azp, 134.482545961512, 0.1);

$azs = $e_sym.bearing(-88.000000,179.000000,-88.000000,268.000000);
is-approx($azs, 134.482545961512, :abs-tol<0.1>); #delta_within($azs, 134.482545961512, 0.1);

$azp = $e_pos.bearing(-88.000000,179.000000,0.000000,1.000000);
is-approx($azp, 182.000849257416, :abs-tol<0.1>); #delta_within($azp, 182.000849257416, 0.1);

$azs = $e_sym.bearing(-88.000000,179.000000,0.000000,1.000000);
is-approx($azs, -177.999150742584, :abs-tol<0.1>); #delta_within($azs, -177.999150742584, 0.1);

$azp = $e_pos.bearing(-88.000000,179.000000,0.000000,90.000000);
is-approx($azp, 270.988841392441, :abs-tol<0.1>); #delta_within($azp, 270.988841392441, 0.1);

$azs = $e_sym.bearing(-88.000000,179.000000,0.000000,90.000000);
is-approx($azs, -89.011158607559, :abs-tol<0.1>); #delta_within($azs, -89.011158607559, 0.1);

$azs = $e_sym.bearing(-88.000000,179.000000,0.000000,179.000000);
is-approx($azs, 0, :abs-tol<0.1>); #delta_within($azs, 0, 0.1);

$azp = $e_pos.bearing(-88.000000,179.000000,0.000000,268.000000);
is-approx($azp, 89.011158607559, :abs-tol<0.1>); #delta_within($azp, 89.011158607559, 0.1);

$azs = $e_sym.bearing(-88.000000,179.000000,0.000000,268.000000);
is-approx($azs, 89.011158607559, :abs-tol<0.1>); #delta_within($azs, 89.011158607559, 0.1);

$azp = $e_pos.bearing(-88.000000,179.000000,88.000000,1.000000);
is-approx($azp, 270.988841392408, :abs-tol<0.1>); #delta_within($azp, 270.988841392408, 0.1);

$azs = $e_sym.bearing(-88.000000,179.000000,88.000000,1.000000);
is-approx($azs, -89.011158607592, :abs-tol<0.1>); #delta_within($azs, -89.011158607592, 0.1);

$azp = $e_pos.bearing(-88.000000,179.000000,88.000000,90.000000);
is-approx($azp, 315.475142548895, :abs-tol<0.1>); #delta_within($azp, 315.475142548895, 0.1);

$azs = $e_sym.bearing(-88.000000,179.000000,88.000000,90.000000);
is-approx($azs, -44.5248574511054, :abs-tol<0.1>); #delta_within($azs, -44.5248574511054, 0.1);

$azs = $e_sym.bearing(-88.000000,179.000000,88.000000,179.000000);
is-approx($azs, 0, :abs-tol<0.1>); #delta_within($azs, 0, 0.1);

$azp = $e_pos.bearing(-88.000000,179.000000,88.000000,268.000000);
is-approx($azp, 44.5248574511054, :abs-tol<0.1>); #delta_within($azp, 44.5248574511054, 0.1);

$azs = $e_sym.bearing(-88.000000,179.000000,88.000000,268.000000);
is-approx($azs, 44.5248574511054, :abs-tol<0.1>); #delta_within($azs, 44.5248574511054, 0.1);

$azp = $e_pos.bearing(-88.000000,268.000000,-88.000000,1.000000);
is-approx($azp, 136.482566859219, :abs-tol<0.1>); #delta_within($azp, 136.482566859219, 0.1);

$azs = $e_sym.bearing(-88.000000,268.000000,-88.000000,1.000000);
is-approx($azs, 136.482566859219, :abs-tol<0.1>); #delta_within($azs, 136.482566859219, 0.1);

$azp = $e_pos.bearing(-88.000000,268.000000,-88.000000,90.000000);
is-approx($azp, 181.000609417072, :abs-tol<0.1>); #delta_within($azp, 181.000609417072, 0.1);

$azs = $e_sym.bearing(-88.000000,268.000000,-88.000000,90.000000);
is-approx($azs, -178.999390582928, :abs-tol<0.1>); #delta_within($azs, -178.999390582928, 0.1);

$azp = $e_pos.bearing(-88.000000,268.000000,-88.000000,179.000000);
is-approx($azp, 225.517454038488, :abs-tol<0.1>); #delta_within($azp, 225.517454038488, 0.1);

$azs = $e_sym.bearing(-88.000000,268.000000,-88.000000,179.000000);
is-approx($azs, -134.482545961512, :abs-tol<0.1>); #delta_within($azs, -134.482545961512, 0.1);

$azp = $e_pos.bearing(-88.000000,268.000000,0.000000,1.000000);
is-approx($azp, 93.0087124332033, :abs-tol<0.1>); #delta_within($azp, 93.0087124332033, 0.1);

$azs = $e_sym.bearing(-88.000000,268.000000,0.000000,1.000000);
is-approx($azs, 93.0087124332033, :abs-tol<0.1>); #delta_within($azs, 93.0087124332033, 0.1);

$azp = $e_pos.bearing(-88.000000,268.000000,0.000000,90.000000);
is-approx($azp, 182.000849257416, :abs-tol<0.1>); #delta_within($azp, 182.000849257416, 0.1);

$azs = $e_sym.bearing(-88.000000,268.000000,0.000000,90.000000);
is-approx($azs, -177.999150742584, :abs-tol<0.1>); #delta_within($azs, -177.999150742584, 0.1);

$azp = $e_pos.bearing(-88.000000,268.000000,0.000000,179.000000);
is-approx($azp, 270.988841392441, :abs-tol<0.1>); #delta_within($azp, 270.988841392441, 0.1);

$azs = $e_sym.bearing(-88.000000,268.000000,0.000000,179.000000);
is-approx($azs, -89.011158607559, :abs-tol<0.1>); #delta_within($azs, -89.011158607559, 0.1);

$azs = $e_sym.bearing(-88.000000,268.000000,0.000000,268.000000);
is-approx($azs, 0, :abs-tol<0.1>); #delta_within($azs, 0, 0.1);

$azp = $e_pos.bearing(-88.000000,268.000000,88.000000,1.000000);
is-approx($azp, 46.5250937031367, :abs-tol<0.1>); #delta_within($azp, 46.5250937031367, 0.1);

$azs = $e_sym.bearing(-88.000000,268.000000,88.000000,1.000000);
is-approx($azs, 46.5250937031367, :abs-tol<0.1>); #delta_within($azs, 46.5250937031367, 0.1);

$azp = $e_pos.bearing(-88.000000,268.000000,88.000000,90.000000);
is-approx($azp, 270.988841392408, :abs-tol<0.1>); #delta_within($azp, 270.988841392408, 0.1);

$azs = $e_sym.bearing(-88.000000,268.000000,88.000000,90.000000);
is-approx($azs, -89.011158607592, :abs-tol<0.1>); #delta_within($azs, -89.011158607592, 0.1);

$azp = $e_pos.bearing(-88.000000,268.000000,88.000000,179.000000);
is-approx($azp, 315.475142548895, :abs-tol<0.1>); #delta_within($azp, 315.475142548895, 0.1);

$azs = $e_sym.bearing(-88.000000,268.000000,88.000000,179.000000);
is-approx($azs, -44.5248574511054, :abs-tol<0.1>); #delta_within($azs, -44.5248574511054, 0.1);

$azs = $e_sym.bearing(-88.000000,268.000000,88.000000,268.000000);
is-approx($azs, 0, :abs-tol<0.1>); #delta_within($azs, 0, 0.1);

$azp = $e_pos.bearing(0.000000,1.000000,-88.000000,1.000000);
is-approx($azp, 180, :abs-tol<0.1>); #delta_within($azp, 180, 0.1);

$azp = $e_pos.bearing(0.000000,1.000000,-88.000000,90.000000);
is-approx($azp, 177.99357628514, :abs-tol<0.1>); #delta_within($azp, 177.99357628514, 0.1);

$azs = $e_sym.bearing(0.000000,1.000000,-88.000000,90.000000);
is-approx($azs, 177.99357628514, :abs-tol<0.1>); #delta_within($azs, 177.99357628514, 0.1);

$azp = $e_pos.bearing(0.000000,1.000000,-88.000000,179.000000);
is-approx($azp, 179.929950967799, :abs-tol<0.1>); #delta_within($azp, 179.929950967799, 0.1);

$azp = $e_pos.bearing(0.000000,1.000000,-88.000000,268.000000);
is-approx($azp, 182.003955421895, :abs-tol<0.1>); #delta_within($azp, 182.003955421895, 0.1);

$azs = $e_sym.bearing(0.000000,1.000000,-88.000000,268.000000);
is-approx($azs, -177.996044578105, :abs-tol<0.1>); #delta_within($azs, -177.996044578105, 0.1);

$azp = $e_pos.bearing(0.000000,1.000000,0.000000,90.000000);
is-approx($azp, 90, :abs-tol<0.1>); #delta_within($azp, 90, 0.1);

$azs = $e_sym.bearing(0.000000,1.000000,0.000000,90.000000);
is-approx($azs, 90, :abs-tol<0.1>); #delta_within($azs, 90, 0.1);

$azp = $e_pos.bearing(0.000000,1.000000,0.000000,179.000000);
is-approx($azp, 90, :abs-tol<0.1>); #delta_within($azp, 90, 0.1);

$azs = $e_sym.bearing(0.000000,1.000000,0.000000,179.000000);
is-approx($azs, 90, :abs-tol<0.1>); #delta_within($azs, 90, 0.1);

$azp = $e_pos.bearing(0.000000,1.000000,0.000000,268.000000);
is-approx($azp, 270, :abs-tol<0.1>); #delta_within($azp, 270, 0.1);

$azs = $e_sym.bearing(0.000000,1.000000,0.000000,268.000000);
is-approx($azs, -90, :abs-tol<0.1>); #delta_within($azs, -90, 0.1);

$azs = $e_sym.bearing(0.000000,1.000000,88.000000,1.000000);
is-approx($azs, 0, :abs-tol<0.1>); #delta_within($azs, 0, 0.1);

$azp = $e_pos.bearing(0.000000,1.000000,88.000000,90.000000);
is-approx($azp, 2.00642371485969, :abs-tol<0.1>); #delta_within($azp, 2.00642371485969, 0.1);

$azs = $e_sym.bearing(0.000000,1.000000,88.000000,90.000000);
is-approx($azs, 2.00642371485969, :abs-tol<0.1>); #delta_within($azs, 2.00642371485969, 0.1);

$azs = $e_sym.bearing(0.000000,1.000000,88.000000,179.000000);
is-approx($azs, 0.0700490322014982, :abs-tol<0.1>); #delta_within($azs, 0.0700490322014982, 0.1);

$azp = $e_pos.bearing(0.000000,1.000000,88.000000,268.000000);
is-approx($azp, 357.996044578105, :abs-tol<0.1>); #delta_within($azp, 357.996044578105, 0.1);

$azs = $e_sym.bearing(0.000000,1.000000,88.000000,268.000000);
is-approx($azs, -2.0039554218951, :abs-tol<0.1>); #delta_within($azs, -2.0039554218951, 0.1);

$azp = $e_pos.bearing(0.000000,90.000000,-88.000000,1.000000);
is-approx($azp, 182.00642371486, :abs-tol<0.1>); #delta_within($azp, 182.00642371486, 0.1);

$azs = $e_sym.bearing(0.000000,90.000000,-88.000000,1.000000);
is-approx($azs, -177.99357628514, :abs-tol<0.1>); #delta_within($azs, -177.99357628514, 0.1);

$azp = $e_pos.bearing(0.000000,90.000000,-88.000000,90.000000);
is-approx($azp, 180, :abs-tol<0.1>); #delta_within($azp, 180, 0.1);

$azp = $e_pos.bearing(0.000000,90.000000,-88.000000,179.000000);
is-approx($azp, 177.99357628514, :abs-tol<0.1>); #delta_within($azp, 177.99357628514, 0.1);

$azs = $e_sym.bearing(0.000000,90.000000,-88.000000,179.000000);
is-approx($azs, 177.99357628514, :abs-tol<0.1>); #delta_within($azs, 177.99357628514, 0.1);

$azp = $e_pos.bearing(0.000000,90.000000,-88.000000,268.000000);
is-approx($azp, 179.929950967799, :abs-tol<0.1>); #delta_within($azp, 179.929950967799, 0.1);

$azp = $e_pos.bearing(0.000000,90.000000,0.000000,1.000000);
is-approx($azp, 270, :abs-tol<0.1>); #delta_within($azp, 270, 0.1);

$azs = $e_sym.bearing(0.000000,90.000000,0.000000,1.000000);
is-approx($azs, -90, :abs-tol<0.1>); #delta_within($azs, -90, 0.1);

$azp = $e_pos.bearing(0.000000,90.000000,0.000000,179.000000);
is-approx($azp, 90, :abs-tol<0.1>); #delta_within($azp, 90, 0.1);

$azs = $e_sym.bearing(0.000000,90.000000,0.000000,179.000000);
is-approx($azs, 90, :abs-tol<0.1>); #delta_within($azs, 90, 0.1);

$azp = $e_pos.bearing(0.000000,90.000000,0.000000,268.000000);
is-approx($azp, 90, :abs-tol<0.1>); #delta_within($azp, 90, 0.1);

$azs = $e_sym.bearing(0.000000,90.000000,0.000000,268.000000);
is-approx($azs, 90, :abs-tol<0.1>); #delta_within($azs, 90, 0.1);

$azp = $e_pos.bearing(0.000000,90.000000,88.000000,1.000000);
is-approx($azp, 357.99357628514, :abs-tol<0.1>); #delta_within($azp, 357.99357628514, 0.1);

$azs = $e_sym.bearing(0.000000,90.000000,88.000000,1.000000);
is-approx($azs, -2.00642371485969, :abs-tol<0.1>); #delta_within($azs, -2.00642371485969, 0.1);

$azs = $e_sym.bearing(0.000000,90.000000,88.000000,90.000000);
is-approx($azs, 0, :abs-tol<0.1>); #delta_within($azs, 0, 0.1);

$azp = $e_pos.bearing(0.000000,90.000000,88.000000,179.000000);
is-approx($azp, 2.00642371485969, :abs-tol<0.1>); #delta_within($azp, 2.00642371485969, 0.1);

$azs = $e_sym.bearing(0.000000,90.000000,88.000000,179.000000);
is-approx($azs, 2.00642371485969, :abs-tol<0.1>); #delta_within($azs, 2.00642371485969, 0.1);

$azs = $e_sym.bearing(0.000000,90.000000,88.000000,268.000000);
is-approx($azs, 0.0700490322014982, :abs-tol<0.1>); #delta_within($azs, 0.0700490322014982, 0.1);

$azp = $e_pos.bearing(0.000000,179.000000,-88.000000,1.000000);
is-approx($azp, 180.070049032201, :abs-tol<0.1>); #delta_within($azp, 180.070049032201, 0.1);

$azp = $e_pos.bearing(0.000000,179.000000,-88.000000,90.000000);
is-approx($azp, 182.00642371486, :abs-tol<0.1>); #delta_within($azp, 182.00642371486, 0.1);

$azs = $e_sym.bearing(0.000000,179.000000,-88.000000,90.000000);
is-approx($azs, -177.99357628514, :abs-tol<0.1>); #delta_within($azs, -177.99357628514, 0.1);

$azp = $e_pos.bearing(0.000000,179.000000,-88.000000,179.000000);
is-approx($azp, 180, :abs-tol<0.1>); #delta_within($azp, 180, 0.1);

$azp = $e_pos.bearing(0.000000,179.000000,-88.000000,268.000000);
is-approx($azp, 177.99357628514, :abs-tol<0.1>); #delta_within($azp, 177.99357628514, 0.1);

$azs = $e_sym.bearing(0.000000,179.000000,-88.000000,268.000000);
is-approx($azs, 177.99357628514, :abs-tol<0.1>); #delta_within($azs, 177.99357628514, 0.1);

$azp = $e_pos.bearing(0.000000,179.000000,0.000000,1.000000);
is-approx($azp, 270, :abs-tol<0.1>); #delta_within($azp, 270, 0.1);

$azs = $e_sym.bearing(0.000000,179.000000,0.000000,1.000000);
is-approx($azs, -90, :abs-tol<0.1>); #delta_within($azs, -90, 0.1);

$azp = $e_pos.bearing(0.000000,179.000000,0.000000,90.000000);
is-approx($azp, 270, :abs-tol<0.1>); #delta_within($azp, 270, 0.1);

$azs = $e_sym.bearing(0.000000,179.000000,0.000000,90.000000);
is-approx($azs, -90, :abs-tol<0.1>); #delta_within($azs, -90, 0.1);

$azp = $e_pos.bearing(0.000000,179.000000,0.000000,268.000000);
is-approx($azp, 90, :abs-tol<0.1>); #delta_within($azp, 90, 0.1);

$azs = $e_sym.bearing(0.000000,179.000000,0.000000,268.000000);
is-approx($azs, 90, :abs-tol<0.1>); #delta_within($azs, 90, 0.1);

$azs = $e_sym.bearing(0.000000,179.000000,88.000000,1.000000);
is-approx($azs, -0.0700490322014735, :abs-tol<0.1>); #delta_within($azs, -0.0700490322014735, 0.1);

$azp = $e_pos.bearing(0.000000,179.000000,88.000000,90.000000);
is-approx($azp, 357.99357628514, :abs-tol<0.1>); #delta_within($azp, 357.99357628514, 0.1);

$azs = $e_sym.bearing(0.000000,179.000000,88.000000,90.000000);
is-approx($azs, -2.00642371485969, :abs-tol<0.1>); #delta_within($azs, -2.00642371485969, 0.1);

$azs = $e_sym.bearing(0.000000,179.000000,88.000000,179.000000);
is-approx($azs, 0, :abs-tol<0.1>); #delta_within($azs, 0, 0.1);

$azp = $e_pos.bearing(0.000000,179.000000,88.000000,268.000000);
is-approx($azp, 2.00642371485969, :abs-tol<0.1>); #delta_within($azp, 2.00642371485969, 0.1);

$azs = $e_sym.bearing(0.000000,179.000000,88.000000,268.000000);
is-approx($azs, 2.00642371485969, :abs-tol<0.1>); #delta_within($azs, 2.00642371485969, 0.1);

$azp = $e_pos.bearing(0.000000,268.000000,-88.000000,1.000000);
is-approx($azp, 177.996044578105, :abs-tol<0.1>); #delta_within($azp, 177.996044578105, 0.1);

$azs = $e_sym.bearing(0.000000,268.000000,-88.000000,1.000000);
is-approx($azs, 177.996044578105, :abs-tol<0.1>); #delta_within($azs, 177.996044578105, 0.1);

$azp = $e_pos.bearing(0.000000,268.000000,-88.000000,90.000000);
is-approx($azp, 180.070049032201, :abs-tol<0.1>); #delta_within($azp, 180.070049032201, 0.1);

$azp = $e_pos.bearing(0.000000,268.000000,-88.000000,179.000000);
is-approx($azp, 182.00642371486, :abs-tol<0.1>); #delta_within($azp, 182.00642371486, 0.1);

$azs = $e_sym.bearing(0.000000,268.000000,-88.000000,179.000000);
is-approx($azs, -177.99357628514, :abs-tol<0.1>); #delta_within($azs, -177.99357628514, 0.1);

$azp = $e_pos.bearing(0.000000,268.000000,-88.000000,268.000000);
is-approx($azp, 180, :abs-tol<0.1>); #delta_within($azp, 180, 0.1);

$azp = $e_pos.bearing(0.000000,268.000000,0.000000,1.000000);
is-approx($azp, 90, :abs-tol<0.1>); #delta_within($azp, 90, 0.1);

$azs = $e_sym.bearing(0.000000,268.000000,0.000000,1.000000);
is-approx($azs, 90, :abs-tol<0.1>); #delta_within($azs, 90, 0.1);

$azp = $e_pos.bearing(0.000000,268.000000,0.000000,90.000000);
is-approx($azp, 270, :abs-tol<0.1>); #delta_within($azp, 270, 0.1);

$azs = $e_sym.bearing(0.000000,268.000000,0.000000,90.000000);
is-approx($azs, -90, :abs-tol<0.1>); #delta_within($azs, -90, 0.1);

$azp = $e_pos.bearing(0.000000,268.000000,0.000000,179.000000);
is-approx($azp, 270, :abs-tol<0.1>); #delta_within($azp, 270, 0.1);

$azs = $e_sym.bearing(0.000000,268.000000,0.000000,179.000000);
is-approx($azs, -90, :abs-tol<0.1>); #delta_within($azs, -90, 0.1);

$azp = $e_pos.bearing(0.000000,268.000000,88.000000,1.000000);
is-approx($azp, 2.00395542189512, :abs-tol<0.1>); #delta_within($azp, 2.00395542189512, 0.1);

$azs = $e_sym.bearing(0.000000,268.000000,88.000000,1.000000);
is-approx($azs, 2.00395542189512, :abs-tol<0.1>); #delta_within($azs, 2.00395542189512, 0.1);

$azs = $e_sym.bearing(0.000000,268.000000,88.000000,90.000000);
is-approx($azs, -0.0700490322014735, :abs-tol<0.1>); #delta_within($azs, -0.0700490322014735, 0.1);

$azp = $e_pos.bearing(0.000000,268.000000,88.000000,179.000000);
is-approx($azp, 357.99357628514, :abs-tol<0.1>); #delta_within($azp, 357.99357628514, 0.1);

$azs = $e_sym.bearing(0.000000,268.000000,88.000000,179.000000);
is-approx($azs, -2.00642371485969, :abs-tol<0.1>); #delta_within($azs, -2.00642371485969, 0.1);

$azs = $e_sym.bearing(0.000000,268.000000,88.000000,268.000000);
is-approx($azs, 0, :abs-tol<0.1>); #delta_within($azs, 0, 0.1);

$azp = $e_pos.bearing(88.000000,1.000000,-88.000000,1.000000);
is-approx($azp, 180, :abs-tol<0.1>); #delta_within($azp, 180, 0.1);

$azp = $e_pos.bearing(88.000000,1.000000,-88.000000,90.000000);
is-approx($azp, 135.475142548896, :abs-tol<0.1>); #delta_within($azp, 135.475142548896, 0.1);

$azs = $e_sym.bearing(88.000000,1.000000,-88.000000,90.000000);
is-approx($azs, 135.475142548896, :abs-tol<0.1>); #delta_within($azs, 135.475142548896, 0.1);

$azp = $e_pos.bearing(88.000000,1.000000,-88.000000,179.000000);
is-approx($azp, 90.9888413924734, :abs-tol<0.1>); #delta_within($azp, 90.9888413924734, 0.1);

$azs = $e_sym.bearing(88.000000,1.000000,-88.000000,179.000000);
is-approx($azs, 90.9888413924734, :abs-tol<0.1>); #delta_within($azs, 90.9888413924734, 0.1);

$azp = $e_pos.bearing(88.000000,1.000000,-88.000000,268.000000);
is-approx($azp, 226.525093703136, :abs-tol<0.1>); #delta_within($azp, 226.525093703136, 0.1);

$azs = $e_sym.bearing(88.000000,1.000000,-88.000000,268.000000);
is-approx($azs, -133.474906296864, :abs-tol<0.1>); #delta_within($azs, -133.474906296864, 0.1);

$azp = $e_pos.bearing(88.000000,1.000000,0.000000,1.000000);
is-approx($azp, 180, :abs-tol<0.1>); #delta_within($azp, 180, 0.1);

$azp = $e_pos.bearing(88.000000,1.000000,0.000000,90.000000);
is-approx($azp, 90.988841392441, :abs-tol<0.1>); #delta_within($azp, 90.988841392441, 0.1);

$azs = $e_sym.bearing(88.000000,1.000000,0.000000,90.000000);
is-approx($azs, 90.988841392441, :abs-tol<0.1>); #delta_within($azs, 90.988841392441, 0.1);

$azp = $e_pos.bearing(88.000000,1.000000,0.000000,179.000000);
is-approx($azp, 2.00084925741569, :abs-tol<0.1>); #delta_within($azp, 2.00084925741569, 0.1);

$azs = $e_sym.bearing(88.000000,1.000000,0.000000,179.000000);
is-approx($azs, 2.00084925741569, :abs-tol<0.1>); #delta_within($azs, 2.00084925741569, 0.1);

$azp = $e_pos.bearing(88.000000,1.000000,0.000000,268.000000);
is-approx($azp, 273.008712433203, :abs-tol<0.1>); #delta_within($azp, 273.008712433203, 0.1);

$azs = $e_sym.bearing(88.000000,1.000000,0.000000,268.000000);
is-approx($azs, -86.9912875667967, :abs-tol<0.1>); #delta_within($azs, -86.9912875667967, 0.1);

$azp = $e_pos.bearing(88.000000,1.000000,88.000000,90.000000);
is-approx($azp, 45.5174540384878, :abs-tol<0.1>); #delta_within($azp, 45.5174540384878, 0.1);

$azs = $e_sym.bearing(88.000000,1.000000,88.000000,90.000000);
is-approx($azs, 45.5174540384878, :abs-tol<0.1>); #delta_within($azs, 45.5174540384878, 0.1);

$azp = $e_pos.bearing(88.000000,1.000000,88.000000,179.000000);
is-approx($azp, 1.00060941707181, :abs-tol<0.1>); #delta_within($azp, 1.00060941707181, 0.1);

$azs = $e_sym.bearing(88.000000,1.000000,88.000000,179.000000);
is-approx($azs, 1.00060941707181, :abs-tol<0.1>); #delta_within($azs, 1.00060941707181, 0.1);

$azp = $e_pos.bearing(88.000000,1.000000,88.000000,268.000000);
is-approx($azp, 316.482566859219, :abs-tol<0.1>); #delta_within($azp, 316.482566859219, 0.1);

$azs = $e_sym.bearing(88.000000,1.000000,88.000000,268.000000);
is-approx($azs, -43.5174331407808, :abs-tol<0.1>); #delta_within($azs, -43.5174331407808, 0.1);

$azp = $e_pos.bearing(88.000000,90.000000,-88.000000,1.000000);
is-approx($azp, 224.524857451104, :abs-tol<0.1>); #delta_within($azp, 224.524857451104, 0.1);

$azs = $e_sym.bearing(88.000000,90.000000,-88.000000,1.000000);
is-approx($azs, -135.475142548896, :abs-tol<0.1>); #delta_within($azs, -135.475142548896, 0.1);

$azp = $e_pos.bearing(88.000000,90.000000,-88.000000,90.000000);
is-approx($azp, 180, :abs-tol<0.1>); #delta_within($azp, 180, 0.1);

$azp = $e_pos.bearing(88.000000,90.000000,-88.000000,179.000000);
is-approx($azp, 135.475142548896, :abs-tol<0.1>); #delta_within($azp, 135.475142548896, 0.1);

$azs = $e_sym.bearing(88.000000,90.000000,-88.000000,179.000000);
is-approx($azs, 135.475142548896, :abs-tol<0.1>); #delta_within($azs, 135.475142548896, 0.1);

$azp = $e_pos.bearing(88.000000,90.000000,-88.000000,268.000000);
is-approx($azp, 90.9888413924734, :abs-tol<0.1>); #delta_within($azp, 90.9888413924734, 0.1);

$azs = $e_sym.bearing(88.000000,90.000000,-88.000000,268.000000);
is-approx($azs, 90.9888413924734, :abs-tol<0.1>); #delta_within($azs, 90.9888413924734, 0.1);

$azp = $e_pos.bearing(88.000000,90.000000,0.000000,1.000000);
is-approx($azp, 269.011158607559, :abs-tol<0.1>); #delta_within($azp, 269.011158607559, 0.1);

$azs = $e_sym.bearing(88.000000,90.000000,0.000000,1.000000);
is-approx($azs, -90.988841392441, :abs-tol<0.1>); #delta_within($azs, -90.988841392441, 0.1);

$azp = $e_pos.bearing(88.000000,90.000000,0.000000,90.000000);
is-approx($azp, 180, :abs-tol<0.1>); #delta_within($azp, 180, 0.1);

$azp = $e_pos.bearing(88.000000,90.000000,0.000000,179.000000);
is-approx($azp, 90.988841392441, :abs-tol<0.1>); #delta_within($azp, 90.988841392441, 0.1);

$azs = $e_sym.bearing(88.000000,90.000000,0.000000,179.000000);
is-approx($azs, 90.988841392441, :abs-tol<0.1>); #delta_within($azs, 90.988841392441, 0.1);

$azp = $e_pos.bearing(88.000000,90.000000,0.000000,268.000000);
is-approx($azp, 2.00084925741569, :abs-tol<0.1>); #delta_within($azp, 2.00084925741569, 0.1);

$azs = $e_sym.bearing(88.000000,90.000000,0.000000,268.000000);
is-approx($azs, 2.00084925741569, :abs-tol<0.1>); #delta_within($azs, 2.00084925741569, 0.1);

$azp = $e_pos.bearing(88.000000,90.000000,88.000000,1.000000);
is-approx($azp, 314.482545961512, :abs-tol<0.1>); #delta_within($azp, 314.482545961512, 0.1);

$azs = $e_sym.bearing(88.000000,90.000000,88.000000,1.000000);
is-approx($azs, -45.5174540384878, :abs-tol<0.1>); #delta_within($azs, -45.5174540384878, 0.1);

$azp = $e_pos.bearing(88.000000,90.000000,88.000000,179.000000);
is-approx($azp, 45.5174540384878, :abs-tol<0.1>); #delta_within($azp, 45.5174540384878, 0.1);

$azs = $e_sym.bearing(88.000000,90.000000,88.000000,179.000000);
is-approx($azs, 45.5174540384878, :abs-tol<0.1>); #delta_within($azs, 45.5174540384878, 0.1);

$azp = $e_pos.bearing(88.000000,90.000000,88.000000,268.000000);
is-approx($azp, 1.00060941707181, :abs-tol<0.1>); #delta_within($azp, 1.00060941707181, 0.1);

$azs = $e_sym.bearing(88.000000,90.000000,88.000000,268.000000);
is-approx($azs, 1.00060941707181, :abs-tol<0.1>); #delta_within($azs, 1.00060941707181, 0.1);

$azp = $e_pos.bearing(88.000000,179.000000,-88.000000,1.000000);
is-approx($azp, 269.011158607527, :abs-tol<0.1>); #delta_within($azp, 269.011158607527, 0.1);

$azs = $e_sym.bearing(88.000000,179.000000,-88.000000,1.000000);
is-approx($azs, -90.9888413924734, :abs-tol<0.1>); #delta_within($azs, -90.9888413924734, 0.1);

$azp = $e_pos.bearing(88.000000,179.000000,-88.000000,90.000000);
is-approx($azp, 224.524857451104, :abs-tol<0.1>); #delta_within($azp, 224.524857451104, 0.1);

$azs = $e_sym.bearing(88.000000,179.000000,-88.000000,90.000000);
is-approx($azs, -135.475142548896, :abs-tol<0.1>); #delta_within($azs, -135.475142548896, 0.1);

$azp = $e_pos.bearing(88.000000,179.000000,-88.000000,179.000000);
is-approx($azp, 180, :abs-tol<0.1>); #delta_within($azp, 180, 0.1);

$azp = $e_pos.bearing(88.000000,179.000000,-88.000000,268.000000);
is-approx($azp, 135.475142548896, :abs-tol<0.1>); #delta_within($azp, 135.475142548896, 0.1);

$azs = $e_sym.bearing(88.000000,179.000000,-88.000000,268.000000);
is-approx($azs, 135.475142548896, :abs-tol<0.1>); #delta_within($azs, 135.475142548896, 0.1);

$azp = $e_pos.bearing(88.000000,179.000000,0.000000,1.000000);
is-approx($azp, 357.999150742584, :abs-tol<0.1>); #delta_within($azp, 357.999150742584, 0.1);

$azs = $e_sym.bearing(88.000000,179.000000,0.000000,1.000000);
is-approx($azs, -2.00084925741568, :abs-tol<0.1>); #delta_within($azs, -2.00084925741568, 0.1);

$azp = $e_pos.bearing(88.000000,179.000000,0.000000,90.000000);
is-approx($azp, 269.011158607559, :abs-tol<0.1>); #delta_within($azp, 269.011158607559, 0.1);

$azs = $e_sym.bearing(88.000000,179.000000,0.000000,90.000000);
is-approx($azs, -90.988841392441, :abs-tol<0.1>); #delta_within($azs, -90.988841392441, 0.1);

$azp = $e_pos.bearing(88.000000,179.000000,0.000000,179.000000);
is-approx($azp, 180, :abs-tol<0.1>); #delta_within($azp, 180, 0.1);

$azp = $e_pos.bearing(88.000000,179.000000,0.000000,268.000000);
is-approx($azp, 90.988841392441, :abs-tol<0.1>); #delta_within($azp, 90.988841392441, 0.1);

$azs = $e_sym.bearing(88.000000,179.000000,0.000000,268.000000);
is-approx($azs, 90.988841392441, :abs-tol<0.1>); #delta_within($azs, 90.988841392441, 0.1);

$azp = $e_pos.bearing(88.000000,179.000000,88.000000,1.000000);
is-approx($azp, 358.999390582928, :abs-tol<0.1>); #delta_within($azp, 358.999390582928, 0.1);

$azs = $e_sym.bearing(88.000000,179.000000,88.000000,1.000000);
is-approx($azs, -1.00060941707181, :abs-tol<0.1>); #delta_within($azs, -1.00060941707181, 0.1);

$azp = $e_pos.bearing(88.000000,179.000000,88.000000,90.000000);
is-approx($azp, 314.482545961512, :abs-tol<0.1>); #delta_within($azp, 314.482545961512, 0.1);

$azs = $e_sym.bearing(88.000000,179.000000,88.000000,90.000000);
is-approx($azs, -45.5174540384878, :abs-tol<0.1>); #delta_within($azs, -45.5174540384878, 0.1);

$azp = $e_pos.bearing(88.000000,179.000000,88.000000,268.000000);
is-approx($azp, 45.5174540384878, :abs-tol<0.1>); #delta_within($azp, 45.5174540384878, 0.1);

$azs = $e_sym.bearing(88.000000,179.000000,88.000000,268.000000);
is-approx($azs, 45.5174540384878, :abs-tol<0.1>); #delta_within($azs, 45.5174540384878, 0.1);

$azp = $e_pos.bearing(88.000000,268.000000,-88.000000,1.000000);
is-approx($azp, 133.474906296864, :abs-tol<0.1>); #delta_within($azp, 133.474906296864, 0.1);

$azs = $e_sym.bearing(88.000000,268.000000,-88.000000,1.000000);
is-approx($azs, 133.474906296864, :abs-tol<0.1>); #delta_within($azs, 133.474906296864, 0.1);

$azp = $e_pos.bearing(88.000000,268.000000,-88.000000,90.000000);
is-approx($azp, 269.011158607527, :abs-tol<0.1>); #delta_within($azp, 269.011158607527, 0.1);

$azs = $e_sym.bearing(88.000000,268.000000,-88.000000,90.000000);
is-approx($azs, -90.9888413924734, :abs-tol<0.1>); #delta_within($azs, -90.9888413924734, 0.1);

$azp = $e_pos.bearing(88.000000,268.000000,-88.000000,179.000000);
is-approx($azp, 224.524857451104, :abs-tol<0.1>); #delta_within($azp, 224.524857451104, 0.1);

$azs = $e_sym.bearing(88.000000,268.000000,-88.000000,179.000000);
is-approx($azs, -135.475142548896, :abs-tol<0.1>); #delta_within($azs, -135.475142548896, 0.1);

$azp = $e_pos.bearing(88.000000,268.000000,-88.000000,268.000000);
is-approx($azp, 180, :abs-tol<0.1>); #delta_within($azp, 180, 0.1);

$azp = $e_pos.bearing(88.000000,268.000000,0.000000,1.000000);
is-approx($azp, 86.9912875667967, :abs-tol<0.1>); #delta_within($azp, 86.9912875667967, 0.1);

$azs = $e_sym.bearing(88.000000,268.000000,0.000000,1.000000);
is-approx($azs, 86.9912875667967, :abs-tol<0.1>); #delta_within($azs, 86.9912875667967, 0.1);

$azp = $e_pos.bearing(88.000000,268.000000,0.000000,90.000000);
is-approx($azp, 357.999150742584, :abs-tol<0.1>); #delta_within($azp, 357.999150742584, 0.1);

$azs = $e_sym.bearing(88.000000,268.000000,0.000000,90.000000);
is-approx($azs, -2.00084925741568, :abs-tol<0.1>); #delta_within($azs, -2.00084925741568, 0.1);

$azp = $e_pos.bearing(88.000000,268.000000,0.000000,179.000000);
is-approx($azp, 269.011158607559, :abs-tol<0.1>); #delta_within($azp, 269.011158607559, 0.1);

$azs = $e_sym.bearing(88.000000,268.000000,0.000000,179.000000);
is-approx($azs, -90.988841392441, :abs-tol<0.1>); #delta_within($azs, -90.988841392441, 0.1);

$azp = $e_pos.bearing(88.000000,268.000000,0.000000,268.000000);
is-approx($azp, 180, :abs-tol<0.1>); #delta_within($azp, 180, 0.1);

$azp = $e_pos.bearing(88.000000,268.000000,88.000000,1.000000);
is-approx($azp, 43.5174331407808, :abs-tol<0.1>); #delta_within($azp, 43.5174331407808, 0.1);

$azs = $e_sym.bearing(88.000000,268.000000,88.000000,1.000000);
is-approx($azs, 43.5174331407808, :abs-tol<0.1>); #delta_within($azs, 43.5174331407808, 0.1);

$azp = $e_pos.bearing(88.000000,268.000000,88.000000,90.000000);
is-approx($azp, 358.999390582928, :abs-tol<0.1>); #delta_within($azp, 358.999390582928, 0.1);

$azs = $e_sym.bearing(88.000000,268.000000,88.000000,90.000000);
is-approx($azs, -1.00060941707181, :abs-tol<0.1>); #delta_within($azs, -1.00060941707181, 0.1);

$azp = $e_pos.bearing(88.000000,268.000000,88.000000,179.000000);
is-approx($azp, 314.482545961512, :abs-tol<0.1>); #delta_within($azp, 314.482545961512, 0.1);

$azs = $e_sym.bearing(88.000000,268.000000,88.000000,179.000000);
is-approx($azs, -45.5174540384878, :abs-tol<0.1>); #delta_within($azs, -45.5174540384878, 0.1);

$azp = $e_pos.bearing(-57.934266,269.464909,-71.038589,313.367482);
is-approx($azp, 143.395603607968, :abs-tol<0.1>); #delta_within($azp, 143.395603607968, 0.1);

$azs = $e_sym.bearing(-57.934266,269.464909,-71.038589,313.367482);
is-approx($azs, 143.395603607968, :abs-tol<0.1>); #delta_within($azs, 143.395603607968, 0.1);

$azp = $e_pos.bearing(13.605417,282.316135,33.826171,132.755857);
is-approx($azp, 329.412475743044, :abs-tol<0.1>); #delta_within($azp, 329.412475743044, 0.1);

$azs = $e_sym.bearing(13.605417,282.316135,33.826171,132.755857);
is-approx($azs, -30.5875242569559, :abs-tol<0.1>); #delta_within($azs, -30.5875242569559, 0.1);

$azp = $e_pos.bearing(65.807118,267.744045,-9.495920,127.342153);
is-approx($azp, 314.966396589062, :abs-tol<0.1>); #delta_within($azp, 314.966396589062, 0.1);

$azs = $e_sym.bearing(65.807118,267.744045,-9.495920,127.342153);
is-approx($azs, -45.0336034109378, :abs-tol<0.1>); #delta_within($azs, -45.0336034109378, 0.1);

$azp = $e_pos.bearing(40.923455,94.159476,-18.604296,279.644382);
is-approx($azp, 346.682016294252, :abs-tol<0.1>); #delta_within($azp, 346.682016294252, 0.1);

$azs = $e_sym.bearing(40.923455,94.159476,-18.604296,279.644382);
is-approx($azs, -13.3179837057484, :abs-tol<0.1>); #delta_within($azs, -13.3179837057484, 0.1);

$azp = $e_pos.bearing(60.726184,207.132176,37.934793,29.881529);
is-approx($azp, 357.809015839191, :abs-tol<0.1>); #delta_within($azp, 357.809015839191, 0.1);

$azs = $e_sym.bearing(60.726184,207.132176,37.934793,29.881529);
is-approx($azs, -2.19098416080909, :abs-tol<0.1>); #delta_within($azs, -2.19098416080909, 0.1);

$azp = $e_pos.bearing(-7.774777,40.360959,7.960132,140.647165);
is-approx($azp, 83.4278273130909, :abs-tol<0.1>); #delta_within($azp, 83.4278273130909, 0.1);

$azs = $e_sym.bearing(-7.774777,40.360959,7.960132,140.647165);
is-approx($azs, 83.4278273130909, :abs-tol<0.1>); #delta_within($azs, 83.4278273130909, 0.1);

$azp = $e_pos.bearing(12.071034,344.345789,64.718561,58.748224);
is-approx($azp, 25.6350676733314, :abs-tol<0.1>); #delta_within($azp, 25.6350676733314, 0.1);

$azs = $e_sym.bearing(12.071034,344.345789,64.718561,58.748224);
is-approx($azs, 25.6350676733314, :abs-tol<0.1>); #delta_within($azs, 25.6350676733314, 0.1);

$azp = $e_pos.bearing(-39.510429,94.209272,74.640675,156.932149);
is-approx($azp, 16.0430701128036, :abs-tol<0.1>); #delta_within($azp, 16.0430701128036, 0.1);

$azs = $e_sym.bearing(-39.510429,94.209272,74.640675,156.932149);
is-approx($azs, 16.0430701128036, :abs-tol<0.1>); #delta_within($azs, 16.0430701128036, 0.1);

$azp = $e_pos.bearing(50.945112,46.686892,-73.531799,338.631126);
is-approx($azp, 201.007479159506, :abs-tol<0.1>); #delta_within($azp, 201.007479159506, 0.1);

$azs = $e_sym.bearing(50.945112,46.686892,-73.531799,338.631126);
is-approx($azs, -158.992520840494, :abs-tol<0.1>); #delta_within($azs, -158.992520840494, 0.1);

$azp = $e_pos.bearing(-83.498813,56.207513,-20.735893,55.705212);
is-approx($azp, 359.4713992725, :abs-tol<0.1>); #delta_within($azp, 359.4713992725, 0.1);

$azs = $e_sym.bearing(-83.498813,56.207513,-20.735893,55.705212);
is-approx($azs, -0.528600727499802, :abs-tol<0.1>); #delta_within($azs, -0.528600727499802, 0.1);

$azp = $e_pos.bearing(5.162682,314.911760,-12.212387,95.006241);
is-approx($azp, 102.90535353589, :abs-tol<0.1>); #delta_within($azp, 102.90535353589, 0.1);

$azs = $e_sym.bearing(5.162682,314.911760,-12.212387,95.006241);
is-approx($azs, 102.90535353589, :abs-tol<0.1>); #delta_within($azs, 102.90535353589, 0.1);

$azp = $e_pos.bearing(-32.807368,276.692824,-69.099205,277.575212);
is-approx($azp, 179.466380802463, :abs-tol<0.1>); #delta_within($azp, 179.466380802463, 0.1);

$azs = $e_sym.bearing(-32.807368,276.692824,-69.099205,277.575212);
is-approx($azs, 179.466380802463, :abs-tol<0.1>); #delta_within($azs, 179.466380802463, 0.1);

$azp = $e_pos.bearing(36.114418,79.272998,46.075743,148.216696);
is-approx($azp, 56.1362395061731, :abs-tol<0.1>); #delta_within($azp, 56.1362395061731, 0.1);

$azs = $e_sym.bearing(36.114418,79.272998,46.075743,148.216696);
is-approx($azs, 56.1362395061731, :abs-tol<0.1>); #delta_within($azs, 56.1362395061731, 0.1);

$azp = $e_pos.bearing(26.193521,333.924339,0.425668,247.478645);
is-approx($azp, 268.930507164728, :abs-tol<0.1>); #delta_within($azp, 268.930507164728, 0.1);

$azs = $e_sym.bearing(26.193521,333.924339,0.425668,247.478645);
is-approx($azs, -91.069492835272, :abs-tol<0.1>); #delta_within($azs, -91.069492835272, 0.1);

$azp = $e_pos.bearing(-11.247993,218.771725,13.474320,227.743816);
is-approx($azp, 20.1557316624214, :abs-tol<0.1>); #delta_within($azp, 20.1557316624214, 0.1);

$azs = $e_sym.bearing(-11.247993,218.771725,13.474320,227.743816);
is-approx($azs, 20.1557316624214, :abs-tol<0.1>); #delta_within($azs, 20.1557316624214, 0.1);

$azp = $e_pos.bearing(-6.437086,227.343277,-63.660092,345.874110);
is-approx($azp, 156.867043901473, :abs-tol<0.1>); #delta_within($azp, 156.867043901473, 0.1);

$azs = $e_sym.bearing(-6.437086,227.343277,-63.660092,345.874110);
is-approx($azs, 156.867043901473, :abs-tol<0.1>); #delta_within($azs, 156.867043901473, 0.1);

$azp = $e_pos.bearing(-62.590000,160.912539,-30.873135,342.930268);
is-approx($azp, 181.732680684942, :abs-tol<0.1>); #delta_within($azp, 181.732680684942, 0.1);

$azs = $e_sym.bearing(-62.590000,160.912539,-30.873135,342.930268);
is-approx($azs, -178.267319315058, :abs-tol<0.1>); #delta_within($azs, -178.267319315058, 0.1);

$azp = $e_pos.bearing(-24.959632,143.558544,-70.174449,343.830865);
is-approx($azp, 186.797641578604, :abs-tol<0.1>); #delta_within($azp, 186.797641578604, 0.1);

$azs = $e_sym.bearing(-24.959632,143.558544,-70.174449,343.830865);
is-approx($azs, -173.202358421396, :abs-tol<0.1>); #delta_within($azs, -173.202358421396, 0.1);

$azp = $e_pos.bearing(85.292583,207.197289,64.400817,53.955321);
is-approx($azp, 337.012768638466, :abs-tol<0.1>); #delta_within($azp, 337.012768638466, 0.1);

$azs = $e_sym.bearing(85.292583,207.197289,64.400817,53.955321);
is-approx($azs, -22.9872313615338, :abs-tol<0.1>); #delta_within($azs, -22.9872313615338, 0.1);

$azp = $e_pos.bearing(72.010476,234.148398,-76.760490,343.799779);
is-approx($azp, 136.471695744589, :abs-tol<0.1>); #delta_within($azp, 136.471695744589, 0.1);

$azs = $e_sym.bearing(72.010476,234.148398,-76.760490,343.799779);
is-approx($azs, 136.471695744589, :abs-tol<0.1>); #delta_within($azs, 136.471695744589, 0.1);

$azp = $e_pos.bearing(82.062247,282.224532,53.709008,205.651325);
is-approx($azp, 267.548713448222, :abs-tol<0.1>); #delta_within($azp, 267.548713448222, 0.1);

$azs = $e_sym.bearing(82.062247,282.224532,53.709008,205.651325);
is-approx($azs, -92.4512865517783, :abs-tol<0.1>); #delta_within($azs, -92.4512865517783, 0.1);

$azp = $e_pos.bearing(-38.264913,345.593277,13.987962,157.269106);
is-approx($azp, 161.114003589302, :abs-tol<0.1>); #delta_within($azp, 161.114003589302, 0.1);

$azs = $e_sym.bearing(-38.264913,345.593277,13.987962,157.269106);
is-approx($azs, 161.114003589302, :abs-tol<0.1>); #delta_within($azs, 161.114003589302, 0.1);

$azp = $e_pos.bearing(-21.923233,331.579924,-82.948909,276.789592);
is-approx($azp, 186.41943112575, :abs-tol<0.1>); #delta_within($azp, 186.41943112575, 0.1);

$azs = $e_sym.bearing(-21.923233,331.579924,-82.948909,276.789592);
is-approx($azs, -173.58056887425, :abs-tol<0.1>); #delta_within($azs, -173.58056887425, 0.1);

$azp = $e_pos.bearing(39.266792,212.567027,-13.043617,231.171501);
is-approx($azp, 157.632255571465, :abs-tol<0.1>); #delta_within($azp, 157.632255571465, 0.1);

$azs = $e_sym.bearing(39.266792,212.567027,-13.043617,231.171501);
is-approx($azs, 157.632255571465, :abs-tol<0.1>); #delta_within($azs, 157.632255571465, 0.1);

$azp = $e_pos.bearing(43.430240,25.708641,-78.620089,278.752912);
is-approx($azp, 195.703317974022, :abs-tol<0.1>); #delta_within($azp, 195.703317974022, 0.1);

$azs = $e_sym.bearing(43.430240,25.708641,-78.620089,278.752912);
is-approx($azs, -164.296682025978, :abs-tol<0.1>); #delta_within($azs, -164.296682025978, 0.1);

$azp = $e_pos.bearing(35.816613,44.413390,-34.595103,26.822827);
is-approx($azp, 195.212777836564, :abs-tol<0.1>); #delta_within($azp, 195.212777836564, 0.1);

$azs = $e_sym.bearing(35.816613,44.413390,-34.595103,26.822827);
is-approx($azs, -164.787222163436, :abs-tol<0.1>); #delta_within($azs, -164.787222163436, 0.1);

$azp = $e_pos.bearing(33.063322,131.654287,40.382161,70.051002);
is-approx($azp, 297.235375347757, :abs-tol<0.1>); #delta_within($azp, 297.235375347757, 0.1);

$azs = $e_sym.bearing(33.063322,131.654287,40.382161,70.051002);
is-approx($azs, -62.7646246522429, :abs-tol<0.1>); #delta_within($azs, -62.7646246522429, 0.1);

$azp = $e_pos.bearing(-60.791775,58.921675,58.472988,198.337306);
is-approx($azp, 78.646083333167, :abs-tol<0.1>); #delta_within($azp, 78.646083333167, 0.1);

$azs = $e_sym.bearing(-60.791775,58.921675,58.472988,198.337306);
is-approx($azs, 78.646083333167, :abs-tol<0.1>); #delta_within($azs, 78.646083333167, 0.1);

$azp = $e_pos.bearing(-32.182827,189.929621,-11.752936,76.924247);
is-approx($azp, 247.228653711236, :abs-tol<0.1>); #delta_within($azp, 247.228653711236, 0.1);

$azs = $e_sym.bearing(-32.182827,189.929621,-11.752936,76.924247);
is-approx($azs, -112.771346288764, :abs-tol<0.1>); #delta_within($azs, -112.771346288764, 0.1);

$azp = $e_pos.bearing(40.410413,1.490210,15.171991,171.877678);
is-approx($azp, 11.1215097915429, :abs-tol<0.1>); #delta_within($azp, 11.1215097915429, 0.1);

$azs = $e_sym.bearing(40.410413,1.490210,15.171991,171.877678);
is-approx($azs, 11.1215097915429, :abs-tol<0.1>); #delta_within($azs, 11.1215097915429, 0.1);

$azp = $e_pos.bearing(77.415003,273.852765,-65.518823,5.320166);
is-approx($azp, 114.317943803113, :abs-tol<0.1>); #delta_within($azp, 114.317943803113, 0.1);

$azs = $e_sym.bearing(77.415003,273.852765,-65.518823,5.320166);
is-approx($azs, 114.317943803113, :abs-tol<0.1>); #delta_within($azs, 114.317943803113, 0.1);

$azp = $e_pos.bearing(-0.001169,303.428210,61.978146,32.763058);
is-approx($azp, 28.100737553144, :abs-tol<0.1>); #delta_within($azp, 28.100737553144, 0.1);

$azs = $e_sym.bearing(-0.001169,303.428210,61.978146,32.763058);
is-approx($azs, 28.100737553144, :abs-tol<0.1>); #delta_within($azs, 28.100737553144, 0.1);

$azp = $e_pos.bearing(62.964471,283.438450,13.811810,35.816077);
is-approx($azp, 63.9173979767126, :abs-tol<0.1>); #delta_within($azp, 63.9173979767126, 0.1);

$azs = $e_sym.bearing(62.964471,283.438450,13.811810,35.816077);
is-approx($azs, 63.9173979767126, :abs-tol<0.1>); #delta_within($azs, 63.9173979767126, 0.1);

$azp = $e_pos.bearing(57.757522,268.496370,71.873398,184.371272);
is-approx($azp, 327.17462331126, :abs-tol<0.1>); #delta_within($azp, 327.17462331126, 0.1);

$azs = $e_sym.bearing(57.757522,268.496370,71.873398,184.371272);
is-approx($azs, -32.8253766887404, :abs-tol<0.1>); #delta_within($azs, -32.8253766887404, 0.1);

$azp = $e_pos.bearing(67.683592,345.377181,11.705901,170.600523);
is-approx($azp, 354.806955928828, :abs-tol<0.1>); #delta_within($azp, 354.806955928828, 0.1);

$azs = $e_sym.bearing(67.683592,345.377181,11.705901,170.600523);
is-approx($azs, -5.19304407117217, :abs-tol<0.1>); #delta_within($azs, -5.19304407117217, 0.1);

$azp = $e_pos.bearing(-14.509993,233.823561,66.915477,210.936486);
is-approx($azp, 351.122612522391, :abs-tol<0.1>); #delta_within($azp, 351.122612522391, 0.1);

$azs = $e_sym.bearing(-14.509993,233.823561,66.915477,210.936486);
is-approx($azs, -8.87738747760942, :abs-tol<0.1>); #delta_within($azs, -8.87738747760942, 0.1);

$azp = $e_pos.bearing(-48.837869,358.766092,-59.984409,250.415053);
is-approx($azp, 214.601548309314, :abs-tol<0.1>); #delta_within($azp, 214.601548309314, 0.1);

$azs = $e_sym.bearing(-48.837869,358.766092,-59.984409,250.415053);
is-approx($azs, -145.398451690686, :abs-tol<0.1>); #delta_within($azs, -145.398451690686, 0.1);

$azp = $e_pos.bearing(35.469166,354.061624,26.153177,235.757036);
is-approx($azp, 307.54615644259, :abs-tol<0.1>); #delta_within($azp, 307.54615644259, 0.1);

$azs = $e_sym.bearing(35.469166,354.061624,26.153177,235.757036);
is-approx($azs, -52.4538435574098, :abs-tol<0.1>); #delta_within($azs, -52.4538435574098, 0.1);

$azp = $e_pos.bearing(60.579911,245.073600,82.746095,119.397052);
is-approx($azp, 349.456168279081, :abs-tol<0.1>); #delta_within($azp, 349.456168279081, 0.1);

$azs = $e_sym.bearing(60.579911,245.073600,82.746095,119.397052);
is-approx($azs, -10.5438317209194, :abs-tol<0.1>); #delta_within($azs, -10.5438317209194, 0.1);

$azp = $e_pos.bearing(52.814462,58.052386,63.937125,216.992405);
is-approx($azp, 10.2919524401595, :abs-tol<0.1>); #delta_within($azp, 10.2919524401595, 0.1);

$azs = $e_sym.bearing(52.814462,58.052386,63.937125,216.992405);
is-approx($azs, 10.2919524401595, :abs-tol<0.1>); #delta_within($azs, 10.2919524401595, 0.1);

$azp = $e_pos.bearing(-14.087235,352.325834,64.925852,167.053343);
is-approx($azp, 2.87132324469977, :abs-tol<0.1>); #delta_within($azp, 2.87132324469977, 0.1);

$azs = $e_sym.bearing(-14.087235,352.325834,64.925852,167.053343);
is-approx($azs, 2.87132324469977, :abs-tol<0.1>); #delta_within($azs, 2.87132324469977, 0.1);

$azp = $e_pos.bearing(-44.555528,303.380598,60.410717,265.142366);
is-approx($azp, 341.013133837574, :abs-tol<0.1>); #delta_within($azp, 341.013133837574, 0.1);

$azs = $e_sym.bearing(-44.555528,303.380598,60.410717,265.142366);
is-approx($azs, -18.9868661624259, :abs-tol<0.1>); #delta_within($azs, -18.9868661624259, 0.1);

$azp = $e_pos.bearing(-64.733717,171.696178,50.043309,179.133361);
is-approx($azp, 5.27317915617838, :abs-tol<0.1>); #delta_within($azp, 5.27317915617838, 0.1);

$azs = $e_sym.bearing(-64.733717,171.696178,50.043309,179.133361);
is-approx($azs, 5.27317915617838, :abs-tol<0.1>); #delta_within($azs, 5.27317915617838, 0.1);

$azp = $e_pos.bearing(12.112040,159.973637,-81.799749,119.465377);
is-approx($azp, 185.36408498589, :abs-tol<0.1>); #delta_within($azp, 185.36408498589, 0.1);

$azs = $e_sym.bearing(12.112040,159.973637,-81.799749,119.465377);
is-approx($azs, -174.63591501411, :abs-tol<0.1>); #delta_within($azs, -174.63591501411, 0.1);

$azp = $e_pos.bearing(-12.913136,209.560123,-72.500921,242.959763);
is-approx($azp, 169.226215342821, :abs-tol<0.1>); #delta_within($azp, 169.226215342821, 0.1);

$azs = $e_sym.bearing(-12.913136,209.560123,-72.500921,242.959763);
is-approx($azs, 169.226215342821, :abs-tol<0.1>); #delta_within($azs, 169.226215342821, 0.1);

$azp = $e_pos.bearing(15.388763,85.383404,43.057681,345.007357);
is-approx($azp, 313.920881630087, :abs-tol<0.1>); #delta_within($azp, 313.920881630087, 0.1);

$azs = $e_sym.bearing(15.388763,85.383404,43.057681,345.007357);
is-approx($azs, -46.0791183699132, :abs-tol<0.1>); #delta_within($azs, -46.0791183699132, 0.1);

$azp = $e_pos.bearing(64.108958,27.645978,7.006558,137.813405);
is-approx($azp, 68.7123060867185, :abs-tol<0.1>); #delta_within($azp, 68.7123060867185, 0.1);

$azs = $e_sym.bearing(64.108958,27.645978,7.006558,137.813405);
is-approx($azs, 68.7123060867185, :abs-tol<0.1>); #delta_within($azs, 68.7123060867185, 0.1);

$azp = $e_pos.bearing(-87.675134,257.547959,-78.556203,7.576067);
is-approx($azp, 120.008321576532, :abs-tol<0.1>); #delta_within($azp, 120.008321576532, 0.1);

$azs = $e_sym.bearing(-87.675134,257.547959,-78.556203,7.576067);
is-approx($azs, 120.008321576532, :abs-tol<0.1>); #delta_within($azs, 120.008321576532, 0.1);

$azp = $e_pos.bearing(45.506762,226.167856,75.858502,197.258652);
is-approx($azp, 347.342287196448, :abs-tol<0.1>); #delta_within($azp, 347.342287196448, 0.1);

$azs = $e_sym.bearing(45.506762,226.167856,75.858502,197.258652);
is-approx($azs, -12.6577128035524, :abs-tol<0.1>); #delta_within($azs, -12.6577128035524, 0.1);

$azp = $e_pos.bearing(-15.130062,141.680058,-53.226032,110.910346);
is-approx($azp, 205.717239120564, :abs-tol<0.1>); #delta_within($azp, 205.717239120564, 0.1);

$azs = $e_sym.bearing(-15.130062,141.680058,-53.226032,110.910346);
is-approx($azs, -154.282760879436, :abs-tol<0.1>); #delta_within($azs, -154.282760879436, 0.1);

$azp = $e_pos.bearing(-51.171998,219.770710,-22.538592,57.834091);
is-approx($azp, 197.174001590393, :abs-tol<0.1>); #delta_within($azp, 197.174001590393, 0.1);

$azs = $e_sym.bearing(-51.171998,219.770710,-22.538592,57.834091);
is-approx($azs, -162.825998409607, :abs-tol<0.1>); #delta_within($azs, -162.825998409607, 0.1);

$azp = $e_pos.bearing(-7.000668,288.466856,-55.716970,258.457540);
is-approx($azp, 200.419276815272, :abs-tol<0.1>); #delta_within($azp, 200.419276815272, 0.1);

$azs = $e_sym.bearing(-7.000668,288.466856,-55.716970,258.457540);
is-approx($azs, -159.580723184728, :abs-tol<0.1>); #delta_within($azs, -159.580723184728, 0.1);

$azp = $e_pos.bearing(-4.103181,51.748045,23.523933,87.322753);
is-approx($azp, 49.9333838628388, :abs-tol<0.1>); #delta_within($azp, 49.9333838628388, 0.1);

$azs = $e_sym.bearing(-4.103181,51.748045,23.523933,87.322753);
is-approx($azs, 49.9333838628388, :abs-tol<0.1>); #delta_within($azs, 49.9333838628388, 0.1);

$azp = $e_pos.bearing(-66.149558,312.989638,-69.799797,271.586522);
is-approx($azp, 238.030177426519, :abs-tol<0.1>); #delta_within($azp, 238.030177426519, 0.1);

$azs = $e_sym.bearing(-66.149558,312.989638,-69.799797,271.586522);
is-approx($azs, -121.969822573481, :abs-tol<0.1>); #delta_within($azs, -121.969822573481, 0.1);

$azp = $e_pos.bearing(-21.017857,200.311309,-74.230046,135.855002);
is-approx($azp, 196.029492653125, :abs-tol<0.1>); #delta_within($azp, 196.029492653125, 0.1);

$azs = $e_sym.bearing(-21.017857,200.311309,-74.230046,135.855002);
is-approx($azs, -163.970507346875, :abs-tol<0.1>); #delta_within($azs, -163.970507346875, 0.1);

$azp = $e_pos.bearing(22.032424,283.684581,-13.840647,296.727744);
is-approx($azp, 159.073330859259, :abs-tol<0.1>); #delta_within($azp, 159.073330859259, 0.1);

$azs = $e_sym.bearing(22.032424,283.684581,-13.840647,296.727744);
is-approx($azs, 159.073330859259, :abs-tol<0.1>); #delta_within($azs, 159.073330859259, 0.1);

$azp = $e_pos.bearing(9.137311,261.695802,-1.968743,94.386354);
is-approx($azp, 299.740904431686, :abs-tol<0.1>); #delta_within($azp, 299.740904431686, 0.1);

$azs = $e_sym.bearing(9.137311,261.695802,-1.968743,94.386354);
is-approx($azs, -60.2590955683142, :abs-tol<0.1>); #delta_within($azs, -60.2590955683142, 0.1);

$azp = $e_pos.bearing(-0.367684,176.265124,-1.495746,305.845852);
is-approx($azp, 92.2533762539934, :abs-tol<0.1>); #delta_within($azp, 92.2533762539934, 0.1);

$azs = $e_sym.bearing(-0.367684,176.265124,-1.495746,305.845852);
is-approx($azs, 92.2533762539934, :abs-tol<0.1>); #delta_within($azs, 92.2533762539934, 0.1);

$azp = $e_pos.bearing(73.726080,130.581316,8.059198,217.631502);
is-approx($azp, 90.4838402750219, :abs-tol<0.1>); #delta_within($azp, 90.4838402750219, 0.1);

$azs = $e_sym.bearing(73.726080,130.581316,8.059198,217.631502);
is-approx($azs, 90.4838402750219, :abs-tol<0.1>); #delta_within($azs, 90.4838402750219, 0.1);

$azp = $e_pos.bearing(19.299877,158.813658,36.382896,77.814439);
is-approx($azp, 303.044909439054, :abs-tol<0.1>); #delta_within($azp, 303.044909439054, 0.1);

$azs = $e_sym.bearing(19.299877,158.813658,36.382896,77.814439);
is-approx($azs, -56.9550905609455, :abs-tol<0.1>); #delta_within($azs, -56.9550905609455, 0.1);

$azp = $e_pos.bearing(46.759530,110.686586,50.379077,32.324924);
is-approx($azp, 304.786480351645, :abs-tol<0.1>); #delta_within($azp, 304.786480351645, 0.1);

$azs = $e_sym.bearing(46.759530,110.686586,50.379077,32.324924);
is-approx($azs, -55.2135196483546, :abs-tol<0.1>); #delta_within($azs, -55.2135196483546, 0.1);

$azp = $e_pos.bearing(70.152840,335.224848,82.259265,222.676574);
is-approx($azp, 342.089448894924, :abs-tol<0.1>); #delta_within($azp, 342.089448894924, 0.1);

$azs = $e_sym.bearing(70.152840,335.224848,82.259265,222.676574);
is-approx($azs, -17.9105511050756, :abs-tol<0.1>); #delta_within($azs, -17.9105511050756, 0.1);

$azp = $e_pos.bearing(-76.222244,41.464968,22.995327,26.717480);
is-approx($azp, 346.229809972732, :abs-tol<0.1>); #delta_within($azp, 346.229809972732, 0.1);

$azs = $e_sym.bearing(-76.222244,41.464968,22.995327,26.717480);
is-approx($azs, -13.7701900272682, :abs-tol<0.1>); #delta_within($azs, -13.7701900272682, 0.1);

$azp = $e_pos.bearing(10.103669,84.844998,19.705372,336.438821);
is-approx($azp, 293.284547184865, :abs-tol<0.1>); #delta_within($azp, 293.284547184865, 0.1);

$azs = $e_sym.bearing(10.103669,84.844998,19.705372,336.438821);
is-approx($azs, -66.7154528151355, :abs-tol<0.1>); #delta_within($azs, -66.7154528151355, 0.1);

$azp = $e_pos.bearing(12.619602,206.584638,-6.260003,43.507509);
is-approx($azp, 289.873007821456, :abs-tol<0.1>); #delta_within($azp, 289.873007821456, 0.1);

$azs = $e_sym.bearing(12.619602,206.584638,-6.260003,43.507509);
is-approx($azs, -70.1269921785435, :abs-tol<0.1>); #delta_within($azs, -70.1269921785435, 0.1);

$azp = $e_pos.bearing(-46.431748,358.501506,10.070717,310.960507);
is-approx($azp, 309.499327919992, :abs-tol<0.1>); #delta_within($azp, 309.499327919992, 0.1);

$azs = $e_sym.bearing(-46.431748,358.501506,10.070717,310.960507);
is-approx($azs, -50.5006720800079, :abs-tol<0.1>); #delta_within($azs, -50.5006720800079, 0.1);

$azp = $e_pos.bearing(-37.466916,262.319964,56.541387,175.943954);
is-approx($azp, 321.047143676273, :abs-tol<0.1>); #delta_within($azp, 321.047143676273, 0.1);

$azs = $e_sym.bearing(-37.466916,262.319964,56.541387,175.943954);
is-approx($azs, -38.9528563237271, :abs-tol<0.1>); #delta_within($azs, -38.9528563237271, 0.1);

$azp = $e_pos.bearing(16.376357,41.153536,-60.139286,251.664078);
is-approx($azp, 199.553357833555, :abs-tol<0.1>); #delta_within($azp, 199.553357833555, 0.1);

$azs = $e_sym.bearing(16.376357,41.153536,-60.139286,251.664078);
is-approx($azs, -160.446642166445, :abs-tol<0.1>); #delta_within($azs, -160.446642166445, 0.1);

$azp = $e_pos.bearing(16.688504,317.111550,-12.125937,75.628131);
is-approx($azp, 94.363475724486, :abs-tol<0.1>); #delta_within($azp, 94.363475724486, 0.1);

$azs = $e_sym.bearing(16.688504,317.111550,-12.125937,75.628131);
is-approx($azs, 94.363475724486, :abs-tol<0.1>); #delta_within($azs, 94.363475724486, 0.1);

$azp = $e_pos.bearing(-55.936936,247.119658,-49.609989,95.206424);
is-approx($azp, 198.711523711379, :abs-tol<0.1>); #delta_within($azp, 198.711523711379, 0.1);

$azs = $e_sym.bearing(-55.936936,247.119658,-49.609989,95.206424);
is-approx($azs, -161.288476288621, :abs-tol<0.1>); #delta_within($azs, -161.288476288621, 0.1);

$azp = $e_pos.bearing(-48.734356,177.370827,-40.864142,160.579825);
is-approx($azp, 297.197389057407, :abs-tol<0.1>); #delta_within($azp, 297.197389057407, 0.1);

$azs = $e_sym.bearing(-48.734356,177.370827,-40.864142,160.579825);
is-approx($azs, -62.8026109425928, :abs-tol<0.1>); #delta_within($azs, -62.8026109425928, 0.1);

$azp = $e_pos.bearing(-46.420266,107.250326,26.510982,269.915143);
is-approx($azp, 139.796923668858, :abs-tol<0.1>); #delta_within($azp, 139.796923668858, 0.1);

$azs = $e_sym.bearing(-46.420266,107.250326,26.510982,269.915143);
is-approx($azs, 139.796923668858, :abs-tol<0.1>); #delta_within($azs, 139.796923668858, 0.1);

$azp = $e_pos.bearing(33.895806,153.110909,45.681845,143.422437);
is-approx($azp, 330.633136925071, :abs-tol<0.1>); #delta_within($azp, 330.633136925071, 0.1);

$azs = $e_sym.bearing(33.895806,153.110909,45.681845,143.422437);
is-approx($azs, -29.3668630749294, :abs-tol<0.1>); #delta_within($azs, -29.3668630749294, 0.1);

$azp = $e_pos.bearing(-22.177541,230.512649,5.952076,323.707746);
is-approx($azp, 85.7970967849502, :abs-tol<0.1>); #delta_within($azp, 85.7970967849502, 0.1);

$azs = $e_sym.bearing(-22.177541,230.512649,5.952076,323.707746);
is-approx($azs, 85.7970967849502, :abs-tol<0.1>); #delta_within($azs, 85.7970967849502, 0.1);

$azp = $e_pos.bearing(27.348830,334.178805,-86.270375,62.080991);
is-approx($azp, 175.799365534158, :abs-tol<0.1>); #delta_within($azp, 175.799365534158, 0.1);

$azs = $e_sym.bearing(27.348830,334.178805,-86.270375,62.080991);
is-approx($azs, 175.799365534158, :abs-tol<0.1>); #delta_within($azs, 175.799365534158, 0.1);

$azp = $e_pos.bearing(25.235341,275.242036,31.035045,277.375893);
is-approx($azp, 17.5689229834593, :abs-tol<0.1>); #delta_within($azp, 17.5689229834593, 0.1);

$azs = $e_sym.bearing(25.235341,275.242036,31.035045,277.375893);
is-approx($azs, 17.5689229834593, :abs-tol<0.1>); #delta_within($azs, 17.5689229834593, 0.1);

$azp = $e_pos.bearing(44.964609,321.744934,-49.665325,229.175856);
is-approx($azp, 231.396822356016, :abs-tol<0.1>); #delta_within($azp, 231.396822356016, 0.1);

$azs = $e_sym.bearing(44.964609,321.744934,-49.665325,229.175856);
is-approx($azs, -128.603177643984, :abs-tol<0.1>); #delta_within($azs, -128.603177643984, 0.1);

$azp = $e_pos.bearing(17.105270,223.789909,-23.725503,25.530801);
is-approx($azp, 114.55421109574, :abs-tol<0.1>); #delta_within($azp, 114.55421109574, 0.1);

$azs = $e_sym.bearing(17.105270,223.789909,-23.725503,25.530801);
is-approx($azs, 114.55421109574, :abs-tol<0.1>); #delta_within($azs, 114.55421109574, 0.1);

$azp = $e_pos.bearing(-43.562030,130.274241,-2.881152,181.334105);
is-approx($azp, 63.1354501704683, :abs-tol<0.1>); #delta_within($azp, 63.1354501704683, 0.1);

$azs = $e_sym.bearing(-43.562030,130.274241,-2.881152,181.334105);
is-approx($azs, 63.1354501704683, :abs-tol<0.1>); #delta_within($azs, 63.1354501704683, 0.1);

$azp = $e_pos.bearing(-36.975702,86.458774,28.597533,323.170028);
is-approx($azp, 276.991231019081, :abs-tol<0.1>); #delta_within($azp, 276.991231019081, 0.1);

$azs = $e_sym.bearing(-36.975702,86.458774,28.597533,323.170028);
is-approx($azs, -83.0087689809187, :abs-tol<0.1>); #delta_within($azs, -83.0087689809187, 0.1);

$azp = $e_pos.bearing(30.175209,16.459075,59.419522,205.929510);
is-approx($azp, 355.197249821978, :abs-tol<0.1>); #delta_within($azp, 355.197249821978, 0.1);

$azs = $e_sym.bearing(30.175209,16.459075,59.419522,205.929510);
is-approx($azs, -4.80275017802205, :abs-tol<0.1>); #delta_within($azs, -4.80275017802205, 0.1);

$azp = $e_pos.bearing(-55.644950,10.465550,-4.344329,202.739897);
is-approx($azp, 194.001768323124, :abs-tol<0.1>); #delta_within($azp, 194.001768323124, 0.1);

$azs = $e_sym.bearing(-55.644950,10.465550,-4.344329,202.739897);
is-approx($azs, -165.998231676876, :abs-tol<0.1>); #delta_within($azs, -165.998231676876, 0.1);

$azp = $e_pos.bearing(-58.450106,219.537369,25.011231,110.301202);
is-approx($azp, 267.595411116428, :abs-tol<0.1>); #delta_within($azp, 267.595411116428, 0.1);

$azs = $e_sym.bearing(-58.450106,219.537369,25.011231,110.301202);
is-approx($azs, -92.4045888835724, :abs-tol<0.1>); #delta_within($azs, -92.4045888835724, 0.1);

$azp = $e_pos.bearing(80.393984,275.211192,23.935568,24.731901);
is-approx($azp, 66.7895730503046, :abs-tol<0.1>); #delta_within($azp, 66.7895730503046, 0.1);

$azs = $e_sym.bearing(80.393984,275.211192,23.935568,24.731901);
is-approx($azs, 66.7895730503046, :abs-tol<0.1>); #delta_within($azs, 66.7895730503046, 0.1);

$azp = $e_pos.bearing(-65.005040,272.050479,-3.463969,257.290127);
is-approx($azp, 343.292530540849, :abs-tol<0.1>); #delta_within($azp, 343.292530540849, 0.1);

$azs = $e_sym.bearing(-65.005040,272.050479,-3.463969,257.290127);
is-approx($azs, -16.707469459151, :abs-tol<0.1>); #delta_within($azs, -16.707469459151, 0.1);

$azp = $e_pos.bearing(-67.713271,230.359203,-17.890516,254.265464);
is-approx($azp, 29.3042376067398, :abs-tol<0.1>); #delta_within($azp, 29.3042376067398, 0.1);

$azs = $e_sym.bearing(-67.713271,230.359203,-17.890516,254.265464);
is-approx($azs, 29.3042376067398, :abs-tol<0.1>); #delta_within($azs, 29.3042376067398, 0.1);

$azp = $e_pos.bearing(49.977476,253.413450,-40.736808,280.971459);
is-approx($azp, 159.351345995222, :abs-tol<0.1>); #delta_within($azp, 159.351345995222, 0.1);

$azs = $e_sym.bearing(49.977476,253.413450,-40.736808,280.971459);
is-approx($azs, 159.351345995222, :abs-tol<0.1>); #delta_within($azs, 159.351345995222, 0.1);

$azp = $e_pos.bearing(-64.390959,100.137796,-73.699237,76.773535);
is-approx($azp, 211.403175640332, :abs-tol<0.1>); #delta_within($azp, 211.403175640332, 0.1);

$azs = $e_sym.bearing(-64.390959,100.137796,-73.699237,76.773535);
is-approx($azs, -148.596824359668, :abs-tol<0.1>); #delta_within($azs, -148.596824359668, 0.1);

$azp = $e_pos.bearing(-53.488147,222.676284,18.783198,197.750208);
is-approx($azp, 335.565188497479, :abs-tol<0.1>); #delta_within($azp, 335.565188497479, 0.1);

$azs = $e_sym.bearing(-53.488147,222.676284,18.783198,197.750208);
is-approx($azs, -24.4348115025209, :abs-tol<0.1>); #delta_within($azs, -24.4348115025209, 0.1);

$azp = $e_pos.bearing(11.886353,45.880034,-75.325990,317.821511);
is-approx($azp, 194.994234182454, :abs-tol<0.1>); #delta_within($azp, 194.994234182454, 0.1);

$azs = $e_sym.bearing(11.886353,45.880034,-75.325990,317.821511);
is-approx($azs, -165.005765817546, :abs-tol<0.1>); #delta_within($azs, -165.005765817546, 0.1);

$azp = $e_pos.bearing(-61.023376,203.548199,-32.274576,120.526333);
is-approx($azp, 258.557806173273, :abs-tol<0.1>); #delta_within($azp, 258.557806173273, 0.1);

$azs = $e_sym.bearing(-61.023376,203.548199,-32.274576,120.526333);
is-approx($azs, -101.442193826727, :abs-tol<0.1>); #delta_within($azs, -101.442193826727, 0.1);

$azp = $e_pos.bearing(-51.815775,243.103403,-81.006002,15.254084);
is-approx($azp, 170.496737342413, :abs-tol<0.1>); #delta_within($azp, 170.496737342413, 0.1);

$azs = $e_sym.bearing(-51.815775,243.103403,-81.006002,15.254084);
is-approx($azs, 170.496737342413, :abs-tol<0.1>); #delta_within($azs, 170.496737342413, 0.1);

$azp = $e_pos.bearing(55.609307,24.137667,36.573196,147.424699);
is-approx($azp, 43.7496416993868, :abs-tol<0.1>); #delta_within($azp, 43.7496416993868, 0.1);

$azs = $e_sym.bearing(55.609307,24.137667,36.573196,147.424699);
is-approx($azs, 43.7496416993868, :abs-tol<0.1>); #delta_within($azs, 43.7496416993868, 0.1);

$azp = $e_pos.bearing(68.261410,337.404883,-87.468266,126.278650);
is-approx($azp, 176.099040884626, :abs-tol<0.1>); #delta_within($azp, 176.099040884626, 0.1);

$azs = $e_sym.bearing(68.261410,337.404883,-87.468266,126.278650);
is-approx($azs, 176.099040884626, :abs-tol<0.1>); #delta_within($azs, 176.099040884626, 0.1);

$azp = $e_pos.bearing(77.163243,355.929440,-24.865636,351.624329);
is-approx($azp, 183.999262418074, :abs-tol<0.1>); #delta_within($azp, 183.999262418074, 0.1);

$azs = $e_sym.bearing(77.163243,355.929440,-24.865636,351.624329);
is-approx($azs, -176.000737581926, :abs-tol<0.1>); #delta_within($azs, -176.000737581926, 0.1);

$azp = $e_pos.bearing(-83.363412,123.109687,60.930467,157.757983);
is-approx($azp, 29.0390517827566, :abs-tol<0.1>); #delta_within($azp, 29.0390517827566, 0.1);

$azs = $e_sym.bearing(-83.363412,123.109687,60.930467,157.757983);
is-approx($azs, 29.0390517827566, :abs-tol<0.1>); #delta_within($azs, 29.0390517827566, 0.1);

$azp = $e_pos.bearing(35.819668,205.275583,-69.790147,65.110415);
is-approx($azp, 200.069364324033, :abs-tol<0.1>); #delta_within($azp, 200.069364324033, 0.1);

$azs = $e_sym.bearing(35.819668,205.275583,-69.790147,65.110415);
is-approx($azs, -159.930635675967, :abs-tol<0.1>); #delta_within($azs, -159.930635675967, 0.1);

$azp = $e_pos.bearing(-45.720757,245.961448,85.378805,184.898940);
is-approx($azp, 354.425186265008, :abs-tol<0.1>); #delta_within($azp, 354.425186265008, 0.1);

$azs = $e_sym.bearing(-45.720757,245.961448,85.378805,184.898940);
is-approx($azs, -5.57481373499197, :abs-tol<0.1>); #delta_within($azs, -5.57481373499197, 0.1);

$azp = $e_pos.bearing(70.557651,168.120919,-4.512946,146.711647);
is-approx($azp, 202.024485782197, :abs-tol<0.1>); #delta_within($azp, 202.024485782197, 0.1);

$azs = $e_sym.bearing(70.557651,168.120919,-4.512946,146.711647);
is-approx($azs, -157.975514217803, :abs-tol<0.1>); #delta_within($azs, -157.975514217803, 0.1);

$azp = $e_pos.bearing(45.494490,42.178744,-62.327500,251.688039);
is-approx($azp, 214.442967212505, :abs-tol<0.1>); #delta_within($azp, 214.442967212505, 0.1);

$azs = $e_sym.bearing(45.494490,42.178744,-62.327500,251.688039);
is-approx($azs, -145.557032787495, :abs-tol<0.1>); #delta_within($azs, -145.557032787495, 0.1);
