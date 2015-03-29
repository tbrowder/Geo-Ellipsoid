#!/usr/bin/env perl

use strict;
use warnings;

use HTTP::Request::Common qw(POST);
use LWP::UserAgent;

#http://www.ngs.noaa.gov/cgi-bin/Inv_Fwd/forward2.prl
#http://www.ngs.noaa.gov/cgi-bin/Inv_Fwd/inverse2.prl

my $uf = 'http://www.ngs.noaa.gov/cgi-bin/Inv_Fwd/forward2.prl';
my $ui = 'http://www.ngs.noaa.gov/cgi-bin/Inv_Fwd/inverse2.prl';

my $ua = LWP::UserAgent->new();

get_forward();
get_inverse();

sub get_forward {
  # forward
  my $req = POST $uf, [
    ELLIPSOID => 'GRS80/WGS84',

    FROM_NAME => 'from',
    FIRST_LAT => 'N01.0',
    FIRST_LON => 'e00.0',
    AZIMUTH   => '120.0',
    DIST      => '10000.0',

    TO_NAME   => 'to',
  ];

  my $res = $ua->request($req)->as_string;
  print $res;
}

sub get_inverse {
  my $req = POST $ui, [
    ELLIPSOID => 'GRS80/WGS84',

    FROM_NAME => 'from',
    FIRST_LAT => 'N01.0',
    FIRST_LON => 'e00.0',

    TO_NAME   => 'to',
    SECOND_LAT => 'S01.0',
    SECOND_LON => 'w00.0',
  ];

  my $res = $ua->request($req)->as_string;
  print $res;
}
