#!/usr/bin/env perl6
# Test Geo::Ellipsoid create

use v6;
use Test;
use lib './lib';
use lib '../lib';

use Geo::Ellipsoid;

my $n =0;

# group 1
my $e1 = Geo::Ellipsoid.new(ellipsoid=>'AIRY');
ok($e1.defined, "test {++$n}");
ok($e1.isa('Geo::Ellipsoid'));
ok($e1.ellipsoid eq 'AIRY');
is_approx($e1.equatorial, 6377563.396);
is_approx($e1.polar, 6356256.90923729);
is_approx($e1.flattening, 0.00334085064149708);
ok($Geo::Ellipsoid::ellipsoids{'AIRY'}:exists);

# group 2
my $e2 = Geo::Ellipsoid.new(ellipsoid=>'AIRY-MODIFIED');
ok($e2.defined, "test group {++$n}");
ok($e2.isa('Geo::Ellipsoid'));
ok($e2.ellipsoid eq 'AIRY-MODIFIED');
is_approx($e2.equatorial, 6377340.189);
is_approx($e2.polar, 6356034.44793853);
is_approx($e2.flattening, 0.00334085064149708);
ok($Geo::Ellipsoid::ellipsoids{'AIRY-MODIFIED'}:exists);

# group 3
my $e3 = Geo::Ellipsoid.new(ellipsoid=>'AUSTRALIAN');
ok($e3.defined, "test {++$n}");
ok($e3.isa('Geo::Ellipsoid'));
ok($e3.ellipsoid eq 'AUSTRALIAN');
is_approx($e3.equatorial, 6378160);
is_approx($e3.polar, 6356774.71919531);
is_approx($e3.flattening, 0.00335289186923722);
ok($Geo::Ellipsoid::ellipsoids{'AUSTRALIAN'}:exists);

# group 4
my $e4 = Geo::Ellipsoid.new(ellipsoid=>'BESSEL-1841');
ok($e4.defined, "test {++$n}");
ok($e4.isa('Geo::Ellipsoid'));
ok($e4.ellipsoid eq 'BESSEL-1841');
is_approx($e4.equatorial, 6377397.155);
is_approx($e4.polar, 6356078.96281819);
is_approx($e4.flattening, 0.00334277318217481);
ok($Geo::Ellipsoid::ellipsoids{'BESSEL-1841'}:exists);

# group 5
my $e5 = Geo::Ellipsoid.new(ellipsoid=>'CLARKE-1880');
ok($e5.defined, "test {++$n}");
ok($e5.isa('Geo::Ellipsoid'));
ok($e5.ellipsoid eq 'CLARKE-1880');
is_approx($e5.equatorial, 6378249.145);
is_approx($e5.polar, 6356514.86954978);
is_approx($e5.flattening, 0.00340756137869933);
ok($Geo::Ellipsoid::ellipsoids{'CLARKE-1880'}:exists);

# group 6
my $e6 = Geo::Ellipsoid.new(ellipsoid=>'EVEREST-1830');
ok($e6.defined, "test {++$n}");
ok($e6.isa('Geo::Ellipsoid'));
ok($e6.ellipsoid eq 'EVEREST-1830');
is_approx($e6.equatorial, 6377276.345);
is_approx($e6.polar, 6356075.41314024);
is_approx($e6.flattening, 0.00332444929666288);
ok($Geo::Ellipsoid::ellipsoids{'EVEREST-1830'}:exists);

# group 7
my $e7 = Geo::Ellipsoid.new(ellipsoid=>'EVEREST-MODIFIED');
ok($e7.defined, "test {++$n}");
ok($e7.isa('Geo::Ellipsoid'));
ok($e7.ellipsoid eq 'EVEREST-MODIFIED');
is_approx($e7.equatorial, 6377304.063);
is_approx($e7.polar, 6356103.03899315);
is_approx($e7.flattening, 0.00332444929666288);
ok($Geo::Ellipsoid::ellipsoids{'EVEREST-MODIFIED'}:exists);

# group 8
my $e8 = Geo::Ellipsoid.new(ellipsoid=>'FISHER-1960');
ok($e8.defined, "test {++$n}");
ok($e8.isa('Geo::Ellipsoid'));
ok($e8.ellipsoid eq 'FISHER-1960');
is_approx($e8.equatorial, 6378166);
is_approx($e8.polar, 6356784.28360711);
is_approx($e8.flattening, 0.00335232986925913);
ok($Geo::Ellipsoid::ellipsoids{'FISHER-1960'}:exists);

# group 9
my $e9 = Geo::Ellipsoid.new(ellipsoid=>'FISHER-1968');
ok($e9.defined, "test {++$n}");
ok($e9.isa('Geo::Ellipsoid'));
ok($e9.ellipsoid eq 'FISHER-1968');
is_approx($e9.equatorial, 6378150);
is_approx($e9.polar, 6356768.33724438);
is_approx($e9.flattening, 0.00335232986925913);
ok($Geo::Ellipsoid::ellipsoids{'FISHER-1968'}:exists);

# group 10
my $e10 = Geo::Ellipsoid.new(ellipsoid=>'GRS80');
ok($e10.defined, "test {++$n}");
ok($e10.isa('Geo::Ellipsoid'));
ok($e10.ellipsoid eq 'GRS80');
is_approx($e10.equatorial, 6378137);
is_approx($e10.polar, 6356752.31414035);
is_approx($e10.flattening, 0.00335281068118367);
ok($Geo::Ellipsoid::ellipsoids{'GRS80'}:exists);

# group 11
my $e11 = Geo::Ellipsoid.new(ellipsoid=>'HAYFORD');
ok($e11.defined, "test {++$n}");
ok($e11.isa('Geo::Ellipsoid'));
ok($e11.ellipsoid eq 'HAYFORD');
is_approx($e11.equatorial, 6378388);
is_approx($e11.polar, 6356911.94612795);
is_approx($e11.flattening, 0.00336700336700337);
ok($Geo::Ellipsoid::ellipsoids{'HAYFORD'}:exists);

# group 12
my $e12 = Geo::Ellipsoid.new(ellipsoid=>'HOUGH-1956');
ok($e12.defined, "test {++$n}");
ok($e12.isa('Geo::Ellipsoid'));
ok($e12.ellipsoid eq 'HOUGH-1956');
is_approx($e12.equatorial, 6378270);
is_approx($e12.polar, 6356794.34343434);
is_approx($e12.flattening, 0.00336700336700337);
ok($Geo::Ellipsoid::ellipsoids{'HOUGH-1956'}:exists);

# group 13
my $e13 = Geo::Ellipsoid.new(ellipsoid=>'IAU76');
ok($e13.defined, "test {++$n}");
ok($e13.isa('Geo::Ellipsoid'));
ok($e13.ellipsoid eq 'IAU76');
is_approx($e13.equatorial, 6378140);
is_approx($e13.polar, 6356755.28815753);
is_approx($e13.flattening, 0.00335281317789691);
ok($Geo::Ellipsoid::ellipsoids{'IAU76'}:exists);

# group 14
my $e14 = Geo::Ellipsoid.new(ellipsoid=>'KRASSOVSKY-1938');
ok($e14,defined, "test {++$n}");
ok($e14.isa('Geo::Ellipsoid'));
ok($e14.ellipsoid eq 'KRASSOVSKY-1938');
is_approx($e14.equatorial, 6378245);
is_approx($e14.polar, 6356863.01877305);
is_approx($e14.flattening, 0.00335232986925913);
ok($Geo::Ellipsoid::ellipsoids{'KRASSOVSKY-1938'}:exists);

# group 15
my $e15 = Geo::Ellipsoid.new(ellipsoid=>'NAD27');
ok($e15.defined, "test {++$n}");
ok($e15.isa('Geo::Ellipsoid'));
ok($e15.ellipsoid eq 'NAD27');
is_approx($e15.equatorial, 6378206.4);
is_approx($e15.polar, 6356583.79999999);
is_approx($e15.flattening, 0.00339007530392992);
ok($Geo::Ellipsoid::ellipsoids{'NAD27'}:exists);

# group 16
my $e16 = Geo::Ellipsoid.new(ellipsoid=>'NWL-9D');
ok($e16.defined, "test {++$n}");
ok($e16.isa('Geo::Ellipsoid'));
ok($e16.ellipsoid eq 'NWL-9D');
is_approx($e16.equatorial, 6378145);
is_approx($e16.polar, 6356759.76948868);
is_approx($e16.flattening, 0.00335289186923722);
ok($Geo::Ellipsoid::ellipsoids{'NWL-9D'}:exists);

# group 17
my $e17 = Geo::Ellipsoid.new(ellipsoid=>'SOUTHAMERICAN-1969');
ok($e17.defined, "test {++$n}");
ok($e17.isa('Geo::Ellipsoid'));
ok($e17.ellipsoid eq 'SOUTHAMERICAN-1969');
is_approx($e17.equatorial, 6378160);
is_approx($e17.polar, 6356774.71919531);
is_approx($e17.flattening, 0.00335289186923722);
ok($Geo::Ellipsoid::ellipsoids{'SOUTHAMERICAN-1969'}:exists);

# group 18
my $e18 = Geo::Ellipsoid.new(ellipsoid=>'SOVIET-1985');
ok($e18.defined, "test {++$n}");
ok($e18.isa('Geo::Ellipsoid'));
ok($e18.ellipsoid eq 'SOVIET-1985');
is_approx($e18.equatorial, 6378136);
is_approx($e18.polar, 6356751.30156878);
is_approx($e18.flattening, 0.00335281317789691);
ok($Geo::Ellipsoid::ellipsoids{'SOVIET-1985'}:exists);

# group 19
my $e19 = Geo::Ellipsoid.new(ellipsoid=>'WGS72');
ok($e19.defined, "test {++$n}");
ok($e19.isa('Geo::Ellipsoid'));
ok($e19.ellipsoid eq 'WGS72');
is_approx($e19.equatorial, 6378135);
is_approx($e19.polar, 6356750.52001609);
is_approx($e19.flattening, 0.0033527794541675);
ok($Geo::Ellipsoid::ellipsoids{'WGS72'}:exists);

# group 20
my $e20 = Geo::Ellipsoid.new(ellipsoid=>'WGS84');
ok($e20.defined, "test {++$n}");
ok($e20.isa('Geo::Ellipsoid'));
ok($e20.ellipsoid eq 'WGS84');
is_approx($e20.equatorial, 6378137);
is_approx($e20.polar, 6356752.31424518);
is_approx($e20.flattening, 0.00335281066474748);
ok($Geo::Ellipsoid::ellipsoids{'WGS84'}:exists);

# group 21
my $e21 = Geo::Ellipsoid.new();
$e21.set_custom_ellipsoid('CUSTOM',6378000,300);
ok($e21.defined, "test {++$n}");
ok($e21.isa('Geo::Ellipsoid'));
ok($e21.ellipsoid eq 'CUSTOM');
is_approx($e21.equatorial, 6378000);
is_approx($e21.polar, 6356740);
is_approx($e21.flattening, 0.00333333333333333);
ok($Geo::Ellipsoid::ellipsoids{'CUSTOM'}:exists);

# group 22
print "\n#\n#\tWarning about 'Infinite flattening' OK here\n#\n;";
my $e22 = Geo::Ellipsoid.new();
$e22.set_custom_ellipsoid('sphere',6378137,0);
ok($e22.defined, "test {++$n}");
ok($e22.isa('Geo::Ellipsoid'));
ok($e22.ellipsoid eq 'SPHERE');
is_approx($e22.equatorial, 6378137);
is_approx($e22.polar, 6378137);
#delta_within($e22.flattening, 0, 1e-6);
ok($Geo::Ellipsoid::ellipsoids{'SPHERE'}:exists);

