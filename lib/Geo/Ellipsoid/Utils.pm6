#	Geo::Ellipsoid::Utils
#
#	This package implements an Ellipsoid class to perform latitude
#	and longitude calculations on the surface of an ellipsoid.
#
#	This is a Perl conversion of existing Fortran code (see
#	ACKNOWLEDGEMENTS) and the author of this class makes no
#	claims of originality. Nor can he even vouch for the
#	results of the calculations, although they do seem to
#	work for him and have been tested against other methods.

use v6;

#use Math::Trig;

unit module Geo::Ellipsoid::Utils;

# THESE CONSTANTS ARE ONLY FOR THE ELLIPSOID MODULE
constant $eps is export(:constants)                = 1.0e-23;
constant $max_loop_count is export(:constants)     = 20;

# constants
constant $degrees_per_radian is export = 180/pi;
constant $twopi is export              = 2 * pi;
constant $halfpi is export             = pi/2;

my $DEBUG = False;


#	normalize_input_angles
#
#	Normalize a set of input angle values by converting to
#	radians if given in degrees and by converting to the
#	range [0,2pi), i.e., greater than or equal to zero and
#	less than two pi.
#
sub normalize_input_angles($units, *@angles) is export
{
  my @angs = map {
    $_ = deg2rad($_) if $units eq 'degrees';
    while $_ < 0       { $_ += $twopi }
    while $_ >= $twopi { $_ -= $twopi }
    $_
  }, @angles;

  if @angs.elems < 2 {
      return @angs.shift;
  }
  else {
      return (|@angs);
  }
}

#	normalize_output_angles
#
#	Normalize a set of output angle values by converting to
#	degrees if needed and by converting to the range [-pi,+pi) or
#	[0,2pi) as needed. Input angles MUST be in radians.
#
sub normalize_output_angles(Bool :$symmetric = False!, :$units!, *@angles) is export
{
  my @angs = @angles;
  if $DEBUG {
    say "DEBUG (normalize_output_angles)";
    say "  \$symmetric = '$symmetric'";
  }

  # adjust remaining input values by reference
  for @angs <-> $ang { # <-> is 'read-write' operator
    say "  input \$ang = '$_'; units = 'radians'" if $DEBUG;

    # what determines desired range of values???
    # the caller declares whether the symmetric or complete range is wanted
    if $ymmetric {
      say "    # normalize to range [-pi,pi)" if $DEBUG;
      # normalize to range [-pi,pi)
      while $ang < -pi { $ang += $twopi }
      while $ang >= pi { $ang -= $twopi }
    }
    else {
      say "    # normalize to range [0,2*pi)" if $DEBUG;
      # normalize to range [0,2*pi)
      while $ang <  0       { $ang += $twopi }
      while ($ang >= $twopi { $ang -= $twopi }
    }
    say "  output \$ang = '$ang'; units = '{ $units }'" if $DEBUG;
    $ang = rad2deg($ang) if $units eq 'degrees';
    say "    # converting rad to degrees" if $DEBUG && $units eq 'degrees';
  }

  if @angs.elems < 2 {
      return @angs.shift;
  }
  else {
      return (|@angs);
  }
}

# convert latitude in degrees, minutes, seconds to degrees
sub lat-hms2deg() is export {
}
# convert longitude in degrees, minutes, seconds to degrees
sub lon-hms2deg() is export {
}


#



#=begin pod
# the following two functions are provided by module Math::Trig
# but, as of 2016-09-03, it causes a rakudo exception
sub rad2deg($rad) is export {
    return $rad * 180 / pi;
}
sub deg2rad($deg) is export {
    return $deg * pi / 180;
}
#=end pod
