#!/usr/local/bin/perl
# Test Geo::Ellipsoid load

#use Test::More tests => 21;
#use Test::Number::Delta relative => 1e-6;

use v6;
use Test;
use lib './lib';
use lib '../lib';

use MyTest;
use Geo::Ellipsoid;
#use blib;

plan 22;

BEGIN { use-ok( 'Geo::Ellipsoid' ); }
my $e0 = Geo::Ellipsoid.new();
isa_ok( $e0, 'Geo::Ellipsoid');
my $e1 = Geo::Ellipsoid.new( units => 'degrees' );
isa_ok( $e1, 'Geo::Ellipsoid');
my $e2 = Geo::Ellipsoid.new( distance_units => 'foot' );
isa_ok( $e2, 'Geo::Ellipsoid');
my $e3 = Geo::Ellipsoid.new( bearing => 1 );
isa_ok( $e3, 'Geo::Ellipsoid');
my $e4 = Geo::Ellipsoid.new( longitude => 1 );
isa_ok( $e4, 'Geo::Ellipsoid');

my $e5 = Geo::Ellipsoid.new();
ok($e5.can('new'), 'new');
ok($e5.can('set_units'), 'set_units');
ok($e5.can('set_distance_unit'), 'set_distance_unit');
ok($e5.can('set_ellipsoid'), 'set_ellipsoid');
ok($e5.can('set_custom_ellipsoid'), 'set_custom_ellipsoid');
ok($e5.can('set_longitude_symmetric'), 'set_longitude_symmetric');
ok($e5.can('set_bearing_symmetric'), 'set_bearing_symmetric');
ok($e5.can('set_defaults'), 'set_defaults');
ok($e5.can('scales'), 'scales');
ok($e5.can('range'), 'range');
ok($e5.can('bearing'), 'bearing');
ok($e5.can('at'), 'at');
ok($e5.can('to'), 'to');
ok($e5.can('to_range'), 'to_range');
ok($e5.can('displacement'), 'displacement');
ok($e5.can('location'), 'location');
