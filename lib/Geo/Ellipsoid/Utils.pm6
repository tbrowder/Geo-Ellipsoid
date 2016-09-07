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

unit module Geo::Ellipsoid::Utils:ver<1.0.0>;

# constants for export
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
} # normalize_input_angles

#	normalize_output_angles
#
#	Normalize a set of output angle values by converting to
#	degrees if needed and by converting to the range [-pi,+pi) or
#	[0,2pi) as needed. Input angles MUST be in radians.
#
sub normalize_output_angles(Bool :$symmetric = False, Str :$units!, *@angles) is export
{
    my @angs = @angles;
    if $DEBUG {
	say "DEBUG (normalize_output_angles)";
	say "  \$symmetric = '$symmetric'";
    }

    # adjust remaining input values by reference
    for @angs <-> $ang { # <-> is 'read-write' operator
	say "  input \$ang = '$_'; units = 'radians'" if $DEBUG;

	# the caller declares whether the symmetric or complete range is wanted
	if $symmetric {
	    say "    # normalize to range [-pi,pi)" if $DEBUG;
	    # normalize to range [-pi,pi)
	    while $ang < -pi { $ang += $twopi }
	    while $ang >= pi { $ang -= $twopi }
	}
	else {
	    say "    # normalize to range [0,2*pi)" if $DEBUG;
	    # normalize to range [0,2*pi)
	    while $ang <  0       { $ang += $twopi }
	    while $ang >= $twopi { $ang -= $twopi }
		  
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
}

# convert latitude in degrees, minutes, seconds to degrees
sub lat-hms2deg($hmsdata) is export {
    # Allowable entries must be in one of the forms:
    #   D or DM or DMS
    # where a missing element is taken to be zero.
    # Enter data as a string with commas or spaces between the DMS entries.

    # latitude entries:
    # Hemisphere h = (blank,N,n,+   or  S,s,-)
    # Nominal : degrees, minutes & seconds ( hDD MM SS.sssss )
    # The result will retain the resulting numerical sign of the D entry.

    # copy input
    my $s = $hmsdata;
    say "DEBUG: input = '$s'";

    # substitute spaces for any ommas
    $s ~~ s:g/','/' '/;
    say "DEBUG: input after subs spaces for commas = '$s'";

    # check for validity and process
    if $s !~~ m:i/ 
                (<[\s N S \+ \-]>?)  # sign of degrees, optional
                (\d+)                # degrees, mandatory
                \s+ (\d+)            # ws, minutes, optional
                \s+ (\d+ \.? \d*)    # ws, seconds, optional
                /
         {

        my $sign = +1;
        if $0 {
           my $c = ~$0;
           if $c ~~ m:i/<[\s N \+]>/ {
               # positive values
               ; # ok: $sign *= +1;
           }
           elsif $c ~~ m:i/<[S \-]>/ {
               # negative values
               $sign *= -1;
           }
           else {
               # error
           }
        }

        my $degrees = extract-hms-match-values($1, $2, $3, :$sign);

        return $degrees:
    }
    # error
}

# convert longitude in degrees, minutes, seconds to degrees
multi sub long-hms2deg($hmsdata) is export {
    return lon-hms2deg($hmsdata);
}
sub lon-hms2deg($hmsdata) is export {
    # Allowable entries must be in one of the forms:
    #   D or DM or DMS
    # where a missing element is taken to be zero.
    # Enter data as a string with commas or spaces between the DMS entries.

    # longitude entries:
    # Hemisphere h = (E,e,+   or  blank,W,w,-)
    # Nominal : degrees, minutes & seconds ( hDDD MM SS.sssss )
    # The result will retain the resulting numerical sign of the D entry.

    # copy input
    my $s = $hmsdata;
    say "DEBUG: input = '$s'";

    # substitute spaces for any commas
    $s ~~ s:g/','/' '/;
    say "DEBUG: input after subs spaces for commas = '$s'";

    # check for validity and process
    if $s !~~ m:i/ 
                (<[\s E W \+ \-]>?)  # sign of degrees, optional
                (\d+)                # degrees, mandatory
                \s+ (\d+)            # ws, minutes, optional
                \s+ (\d+ \.? \d*)    # ws, seconds, optional
                /
         {

        my $sign = +1;
        if $0 {
           my $c = ~$0;
           if $c ~~ m:i/<[E \+]>/ {
               # positive values
               ; # ok: $sign *= +1;
           }
           elsif $c ~~ m:i/<[\s W \-]>/ {
               # negative values 
               $sign *= -1;
           }
           else {
               # error
           }
        }

        my $degrees = extract-hms-match-values(:$sign, $1, $2, $3);

        return $degrees:
    }
    # error
}

# convert degrees in DMS to decimal degrees
sub hms2deg($h, $m, $sec) is export {
    # Allowable entries must be in one of the forms:
    #   D or DM or DMS
    # where a missing element is taken to be zero.
    # Commas must be used between the DMS entries.
    # The result will retain the numerical sign of the D entry.
 
    # turn the numbers into a string
    my $s = $h;
    $s ~= " $m" if $m;
    $s ~= " $sec" if $sec;
 
    # now string is in a form to use the longitude function
    return lon-hms2deg($s); 
    
}

sub extract-hms-match-values($h, $m, $s, :$sign!) {
        my $degrees = 0;
        if $h {
           $degrees = +$h;
        }
        else {
            # error
        }

        my $minutes = 0;
        if $m {
           $minutes = +$m;
        }
        else {
            # error
        }

        my $seconds = 0;
        if $s {
           $seconds = +$s;
        }
        else {
            # error
        }

        $degrees += $minutes / 60;
        $degrees += $seconds / 3600;

        # now apply the sign
        $degrees *= $sign;

        return $degrees;
}


=begin pod
    # allowable input (from NOAA/NGS code

    Some example latitude inputs are :

     Hemisphere h = (blank,N,n,+   or  S,s,-)
     Commas or blanks may be used between the D,M,S entries.

     Keyed Input :                              Converted latitude :

     Nominal : degrees, minutes & seconds ( hDD MM SS.sssss )
     =========
     hDD MM SS.sssss                            Latitude :
     <cr>                   ( h default = N )     0  0  0.00000 North
     0                             "                     "
     0 0 0                         "                     "
     0,0,0.0                       "                     "
     0d 0m 0s                      "                     "
     00d 00m 00.000s               "                     "
     10 0 1.00001                  "             10  0  1.00001 North
     10d 0m 1.00001s               "             10  0  1.00001 North
     +0                                           0  0  0.00000 North
     +0 0 0.0                                     0  0  0.00000 North
     +0,0,0.1                                     0  0  0.10000 North
     N0                                           0  0  0.00000 North
     N20                                         20  0  0.00000 North
     n20d20m22s                                  20 20 22.00000 North
     n020d  20m 0022s                            20 20 22.00000 North
     n10 0 10.00001                              10  0 10.00001 North
     -0 0 1.00001                                 0  0  1.00001 South
     -10 0 10.00001                              10  0 10.00001 South
     S26 37 48.26371                             26 37 48.26371 South

     Packed : degrees-minutes-seconds ( hDDMMSS.sssss )
     ========
     hDDMMSS.sssss                              Latitude :
     N000000.000                                  0  0  0.00000 North
     N100010.00001                               10  0 10.00001 North
     S263748.26371                               26 37 48.26371 South

     Decimal : degrees ( hDD.dddddddd )
     =========
     hDD.dddddddd                               Latitude :
     20.0                   ( h default = N )    20  0  0.00000 North
     10.002777781                  "             10  0 10.00001 North
     s26.630073253                               26 37 48.26371 South

=======================================================================
Some example longitude inputs are :

     Hemisphere h = (E,e,+   or  blank,W,w,-)
     Commas or blanks may be used between the D,M,S entries.

     Keyed Input :                              Converted longitude :

     Nominal : degrees, minutes & seconds ( hDDD MM SS.sssss )
     =========
     hDDD MM SS.sssss                           Longitude :
     <cr>                   ( h default = W )     0  0  0.00000 West
     0                             "                     "
     0 0 0                         "                     "
     0,0,0.0                       "                     "
     0d 0m 0s                      "                     "
     00d 00m 00.000s               "                     "
     10 0 1.00001                  "             10  0  1.00001 West
     10d 0m 1.00001s               "             10  0  1.00001 West
     -1                                           1  0  0.00000 West
     -0 0 1.00001                                 0  0  1.00001 West
     -10 0 10.00001                              10  0 10.00001 West
     W0                                           0  0  0.00000 West
     W20                                         20  0  0.00000 West
     w20d20m22s                                  20 20 22.00000 West
     w020d  20m 0022s                            20 20 22.00000 West
     w10 0 10.00001                              10  0 10.00001 West
     +0                                           0  0  0.00000 East
     +0 0 0.0                                     0  0  0.00000 East
     +0,0,0.1                                     0  0  0.10000 East
     E26 37 48.26371                             26 37 48.26371 East

     Packed : degrees-minutes-seconds ( hDDDMMSS.sssss )
     ========
     hDDDMMSS.sssss                             Longitude :
     W0000000.000                                 0  0  0.00000 West
     W0100010.00001                              10  0 10.00001 West
     E0263748.26371                              26 37 48.26371 East

     Decimal : degrees ( hDDD.dddddddd )
     =========
     hDDD.dddddddd                              Longitude :
     20.0                   ( h default = W )    20  0  0.00000 West
     10.002777781                  "             10  0 10.00001 West
     -10.002777781                               10  0 10.00001 West
     +10.002777781                               10  0 10.00001 East
     e26.630073253                               26 37 48.26371 East
=end pod


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
