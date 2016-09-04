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
#use Geo::Ellipsoid::Utils;

unit module Geo::Ellipsoid::Utils;

#	normalize_input_angles
#
#	Normalize a set of input angle values by converting to
#	radians if given in degrees and by converting to the
#	range [0,2pi), i.e., greater than or equal to zero and
#	less than two pi.
#
sub normalize_input_angles($units, *@angles) is export
{
  my @nangles = map {
    $_ = deg2rad($_) if $units eq 'degrees';
    while ($_ < 0) { $_ += $twopi }
    while ($_ >= $twopi) { $_ -= $twopi }
    $_
  }, @angles;

  if @nangles.elems < 2 {
      return @nangles.shift;
  }
  else {
      return (|@nangles);
  }
}

#	normalize_output_angles
#
#	Normalize a set of output angle values by converting to
#	degrees if needed and by converting to the range [-pi,+pi) or
#	[0,2pi) as needed. Input angles MUST be in radians.
#
sub normalize_output_angles(:$ang-type!, :$units!, *@angles) is export
{
  my @a = @angles;
  if $DEBUG {
    say "DEBUG (normalize_output_angles)";
    say "  \$ang-type = '$ang-type'";
  }

  # adjust remaining input values by reference
  for @a <-> $_ { # <-> is 'read-write' operator
    say "  input \$_ = '$_'; units = 'radians'" if $DEBUG;

    # what determines desired range of values???
    if $ang-type ~~ /lat|bearing/ { # ???? <======= LINE 995 =============== LINE 995
      say "    # normalize to range [-pi,pi)" if $DEBUG;
      # normalize to range [-pi,pi)
      while ($_ < -(pi)) { $_ += $twopi }
      while ($_ >= pi)   { $_ -= $twopi }
    } else {
      say "    # normalize to range [0,2*pi)" if $DEBUG;
      # normalize to range [0,2*pi)
      while ($_ <  0)      { $_ += $twopi }
      while ($_ >= $twopi) { $_ -= $twopi }
    }
    say "  output \$_ = '$_'; units = '{ $units }'" if $DEBUG;
    $_ = rad2deg($_) if $units eq 'degrees';
    say "    # converting rad to degrees" if $DEBUG && $units eq 'degrees';
  }

  if @a.elems < 2 {
      return @a.shift;
  }
  else {
      return (|@a);
  }
}

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

