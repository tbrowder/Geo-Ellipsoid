#!/usr/bin/env perl6
# Test Geo::Ellipsoid set

use v6;
use Test;
use lib './lib';
use lib '../lib';

use Geo::Ellipsoid;

plan 176;

my $e = Geo::Ellipsoid.new();

my $e1 = Geo::Ellipsoid.new();
$e.set_units('degrees');
$e1.set_units('degrees');
ok($e.{units} eq 'degrees');
ok($e1.{units} eq 'degrees');

my $e2 = Geo::Ellipsoid.new();
$e.set_units('radians');
$e2.set_units('radians');
ok($e.{units} eq 'radians');
ok($e2.{units} eq 'radians');

my $e3 = Geo::Ellipsoid.new();
$e.set_units('DEG');
$e3.set_units('DEG');
ok($e.{units} eq 'degrees');
ok($e3.{units} eq 'degrees');

my $e4 = Geo::Ellipsoid.new();
$e.set_units('Deg');
$e4.set_units('Deg');
ok($e.{units} eq 'degrees');
ok($e4.{units} eq 'degrees');

my $e5 = Geo::Ellipsoid.new();
$e.set_units('deg');
$e5.set_units('deg');
ok($e.{units} eq 'degrees');
ok($e5.{units} eq 'degrees');

my $e6 = Geo::Ellipsoid.new();
$e.set_units('RAD');
$e6.set_units('RAD');
ok($e.{units} eq 'radians');
ok($e6.{units} eq 'radians');

my $e7 = Geo::Ellipsoid.new();
$e.set_units('Rad');
$e7.set_units('Rad');
ok($e.{units} eq 'radians');
ok($e7.{units} eq 'radians');

my $e8 = Geo::Ellipsoid.new();
$e.set_units('rad');
$e8.set_units('rad');
ok($e.{units} eq 'radians');
ok($e8.{units} eq 'radians');

my $e9 = Geo::Ellipsoid.new();
$e.set_ellipsoid('AIRY');
$e9.set_ellipsoid('AIRY');
ok($e.{ellipsoid} eq 'AIRY');
ok($e9.{ellipsoid} eq 'AIRY');
is_approx($e9.{equatorial}, 6377563.396); 
is_approx($e9.{polar}, 6356256.90923729); 
is_approx($e9.{flattening}, 0.00334085064149708); 
is_approx($e.{equatorial}, 6377563.396); 
is_approx($e.{polar}, 6356256.90923729); 
is_approx($e.{flattening}, 0.00334085064149708); 

my $e10 = Geo::Ellipsoid.new();
$e.set_ellipsoid('AIRY-MODIFIED');
$e10.set_ellipsoid('AIRY-MODIFIED');
ok($e.{ellipsoid} eq 'AIRY-MODIFIED');
ok($e10.{ellipsoid} eq 'AIRY-MODIFIED');
is_approx($e10.{equatorial}, 6377340.189); 
is_approx($e10.{polar}, 6356034.44793853); 
is_approx($e10.{flattening}, 0.00334085064149708); 
is_approx($e.{equatorial}, 6377340.189); 
is_approx($e.{polar}, 6356034.44793853); 
is_approx($e.{flattening}, 0.00334085064149708); 

my $e11 = Geo::Ellipsoid.new();
$e.set_ellipsoid('AUSTRALIAN');
$e11.set_ellipsoid('AUSTRALIAN');
ok($e.{ellipsoid} eq 'AUSTRALIAN');
ok($e11.{ellipsoid} eq 'AUSTRALIAN');
is_approx($e11.{equatorial}, 6378160); 
is_approx($e11.{polar}, 6356774.71919531); 
is_approx($e11.{flattening}, 0.00335289186923722); 
is_approx($e.{equatorial}, 6378160); 
is_approx($e.{polar}, 6356774.71919531); 
is_approx($e.{flattening}, 0.00335289186923722); 

my $e12 = Geo::Ellipsoid.new();
$e.set_ellipsoid('BESSEL-1841');
$e12.set_ellipsoid('BESSEL-1841');
ok($e.{ellipsoid} eq 'BESSEL-1841');
ok($e12.{ellipsoid} eq 'BESSEL-1841');
is_approx($e12.{equatorial}, 6377397.155); 
is_approx($e12.{polar}, 6356078.96281819); 
is_approx($e12.{flattening}, 0.00334277318217481); 
is_approx($e.{equatorial}, 6377397.155); 
is_approx($e.{polar}, 6356078.96281819); 
is_approx($e.{flattening}, 0.00334277318217481); 

my $e13 = Geo::Ellipsoid.new();
$e.set_ellipsoid('CLARKE-1880');
$e13.set_ellipsoid('CLARKE-1880');
ok($e.{ellipsoid} eq 'CLARKE-1880');
ok($e13.{ellipsoid} eq 'CLARKE-1880');
is_approx($e13.{equatorial}, 6378249.145); 
is_approx($e13.{polar}, 6356514.86954978); 
is_approx($e13.{flattening}, 0.00340756137869933); 
is_approx($e.{equatorial}, 6378249.145); 
is_approx($e.{polar}, 6356514.86954978); 
is_approx($e.{flattening}, 0.00340756137869933); 

my $e14 = Geo::Ellipsoid.new();
$e.set_ellipsoid('EVEREST-1830');
$e14.set_ellipsoid('EVEREST-1830');
ok($e.{ellipsoid} eq 'EVEREST-1830');
ok($e14.{ellipsoid} eq 'EVEREST-1830');
is_approx($e14.{equatorial}, 6377276.345); 
is_approx($e14.{polar}, 6356075.41314024); 
is_approx($e14.{flattening}, 0.00332444929666288); 
is_approx($e.{equatorial}, 6377276.345); 
is_approx($e.{polar}, 6356075.41314024); 
is_approx($e.{flattening}, 0.00332444929666288); 

my $e15 = Geo::Ellipsoid.new();
$e.set_ellipsoid('EVEREST-MODIFIED');
$e15.set_ellipsoid('EVEREST-MODIFIED');
ok($e.{ellipsoid} eq 'EVEREST-MODIFIED');
ok($e15.{ellipsoid} eq 'EVEREST-MODIFIED');
is_approx($e15.{equatorial}, 6377304.063); 
is_approx($e15.{polar}, 6356103.03899315); 
is_approx($e15.{flattening}, 0.00332444929666288); 
is_approx($e.{equatorial}, 6377304.063); 
is_approx($e.{polar}, 6356103.03899315); 
is_approx($e.{flattening}, 0.00332444929666288); 

my $e16 = Geo::Ellipsoid.new();
$e.set_ellipsoid('FISHER-1960');
$e16.set_ellipsoid('FISHER-1960');
ok($e.{ellipsoid} eq 'FISHER-1960');
ok($e16.{ellipsoid} eq 'FISHER-1960');
is_approx($e16.{equatorial}, 6378166); 
is_approx($e16.{polar}, 6356784.28360711); 
is_approx($e16.{flattening}, 0.00335232986925913); 
is_approx($e.{equatorial}, 6378166); 
is_approx($e.{polar}, 6356784.28360711); 
is_approx($e.{flattening}, 0.00335232986925913); 

my $e17 = Geo::Ellipsoid.new();
$e.set_ellipsoid('FISHER-1968');
$e17.set_ellipsoid('FISHER-1968');
ok($e.{ellipsoid} eq 'FISHER-1968');
ok($e17.{ellipsoid} eq 'FISHER-1968');
is_approx($e17.{equatorial}, 6378150); 
is_approx($e17.{polar}, 6356768.33724438); 
is_approx($e17.{flattening}, 0.00335232986925913); 
is_approx($e.{equatorial}, 6378150); 
is_approx($e.{polar}, 6356768.33724438); 
is_approx($e.{flattening}, 0.00335232986925913); 

my $e18 = Geo::Ellipsoid.new();
$e.set_ellipsoid('GRS80');
$e18.set_ellipsoid('GRS80');
ok($e.{ellipsoid} eq 'GRS80');
ok($e18.{ellipsoid} eq 'GRS80');
is_approx($e18.{equatorial}, 6378137); 
is_approx($e18.{polar}, 6356752.31414035); 
is_approx($e18.{flattening}, 0.00335281068118367); 
is_approx($e.{equatorial}, 6378137); 
is_approx($e.{polar}, 6356752.31414035); 
is_approx($e.{flattening}, 0.00335281068118367); 

my $e19 = Geo::Ellipsoid.new();
$e.set_ellipsoid('HAYFORD');
$e19.set_ellipsoid('HAYFORD');
ok($e.{ellipsoid} eq 'HAYFORD');
ok($e19.{ellipsoid} eq 'HAYFORD');
is_approx($e19.{equatorial}, 6378388); 
is_approx($e19.{polar}, 6356911.94612795); 
is_approx($e19.{flattening}, 0.00336700336700337); 
is_approx($e.{equatorial}, 6378388); 
is_approx($e.{polar}, 6356911.94612795); 
is_approx($e.{flattening}, 0.00336700336700337); 

my $e20 = Geo::Ellipsoid.new();
$e.set_ellipsoid('HOUGH-1956');
$e20.set_ellipsoid('HOUGH-1956');
ok($e.{ellipsoid} eq 'HOUGH-1956');
ok($e20.{ellipsoid} eq 'HOUGH-1956');
is_approx($e20.{equatorial}, 6378270); 
is_approx($e20.{polar}, 6356794.34343434); 
is_approx($e20.{flattening}, 0.00336700336700337); 
is_approx($e.{equatorial}, 6378270); 
is_approx($e.{polar}, 6356794.34343434); 
is_approx($e.{flattening}, 0.00336700336700337); 

my $e21 = Geo::Ellipsoid.new();
$e.set_ellipsoid('IAU76');
$e21.set_ellipsoid('IAU76');
ok($e.{ellipsoid} eq 'IAU76');
ok($e21.{ellipsoid} eq 'IAU76');
is_approx($e21.{equatorial}, 6378140); 
is_approx($e21.{polar}, 6356755.28815753); 
is_approx($e21.{flattening}, 0.00335281317789691); 
is_approx($e.{equatorial}, 6378140); 
is_approx($e.{polar}, 6356755.28815753); 
is_approx($e.{flattening}, 0.00335281317789691); 

my $e22 = Geo::Ellipsoid.new();
$e.set_ellipsoid('KRASSOVSKY-1938');
$e22.set_ellipsoid('KRASSOVSKY-1938');
ok($e.{ellipsoid} eq 'KRASSOVSKY-1938');
ok($e22.{ellipsoid} eq 'KRASSOVSKY-1938');
is_approx($e22.{equatorial}, 6378245); 
is_approx($e22.{polar}, 6356863.01877305); 
is_approx($e22.{flattening}, 0.00335232986925913); 
is_approx($e.{equatorial}, 6378245); 
is_approx($e.{polar}, 6356863.01877305); 
is_approx($e.{flattening}, 0.00335232986925913); 

my $e23 = Geo::Ellipsoid.new();
$e.set_ellipsoid('NAD27');
$e23.set_ellipsoid('NAD27');
ok($e.{ellipsoid} eq 'NAD27');
ok($e23.{ellipsoid} eq 'NAD27');
is_approx($e23.{equatorial}, 6378206.4); 
is_approx($e23.{polar}, 6356583.79999999); 
is_approx($e23.{flattening}, 0.00339007530392992); 
is_approx($e.{equatorial}, 6378206.4); 
is_approx($e.{polar}, 6356583.79999999); 
is_approx($e.{flattening}, 0.00339007530392992); 

my $e24 = Geo::Ellipsoid.new();
$e.set_ellipsoid('NWL-9D');
$e24.set_ellipsoid('NWL-9D');
ok($e.{ellipsoid} eq 'NWL-9D');
ok($e24.{ellipsoid} eq 'NWL-9D');
is_approx($e24.{equatorial}, 6378145); 
is_approx($e24.{polar}, 6356759.76948868); 
is_approx($e24.{flattening}, 0.00335289186923722); 
is_approx($e.{equatorial}, 6378145); 
is_approx($e.{polar}, 6356759.76948868); 
is_approx($e.{flattening}, 0.00335289186923722); 

my $e25 = Geo::Ellipsoid.new();
$e.set_ellipsoid('SOUTHAMERICAN-1969');
$e25.set_ellipsoid('SOUTHAMERICAN-1969');
ok($e.{ellipsoid} eq 'SOUTHAMERICAN-1969');
ok($e25.{ellipsoid} eq 'SOUTHAMERICAN-1969');
is_approx($e25.{equatorial}, 6378160); 
is_approx($e25.{polar}, 6356774.71919531); 
is_approx($e25.{flattening}, 0.00335289186923722); 
is_approx($e.{equatorial}, 6378160); 
is_approx($e.{polar}, 6356774.71919531); 
is_approx($e.{flattening}, 0.00335289186923722); 

my $e26 = Geo::Ellipsoid.new();
$e.set_ellipsoid('SOVIET-1985');
$e26.set_ellipsoid('SOVIET-1985');
ok($e.{ellipsoid} eq 'SOVIET-1985');
ok($e26.{ellipsoid} eq 'SOVIET-1985');
is_approx($e26.{equatorial}, 6378136); 
is_approx($e26.{polar}, 6356751.30156878); 
is_approx($e26.{flattening}, 0.00335281317789691); 
is_approx($e.{equatorial}, 6378136); 
is_approx($e.{polar}, 6356751.30156878); 
is_approx($e.{flattening}, 0.00335281317789691); 

my $e27 = Geo::Ellipsoid.new();
$e.set_ellipsoid('WGS72');
$e27.set_ellipsoid('WGS72');
ok($e.{ellipsoid} eq 'WGS72');
ok($e27.{ellipsoid} eq 'WGS72');
is_approx($e27.{equatorial}, 6378135); 
is_approx($e27.{polar}, 6356750.52001609); 
is_approx($e27.{flattening}, 0.0033527794541675); 
is_approx($e.{equatorial}, 6378135); 
is_approx($e.{polar}, 6356750.52001609); 
is_approx($e.{flattening}, 0.0033527794541675); 

my $e28 = Geo::Ellipsoid.new();
$e.set_ellipsoid('WGS84');
$e28.set_ellipsoid('WGS84');
ok($e.{ellipsoid} eq 'WGS84');
ok($e28.{ellipsoid} eq 'WGS84');
is_approx($e28.{equatorial}, 6378137); 
is_approx($e28.{polar}, 6356752.31424518); 
is_approx($e28.{flattening}, 0.00335281066474748); 
is_approx($e.{equatorial}, 6378137); 
is_approx($e.{polar}, 6356752.31424518); 
is_approx($e.{flattening}, 0.00335281066474748); 

