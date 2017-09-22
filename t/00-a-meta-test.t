use v6;
use Test;

use Test::META;

plan 1;

meta-ok :relaxed-name;

=begin comment
constant AUTHOR = ?%*ENV<TEST_AUTHOR>; 

if AUTHOR { 
    require Test::META <&meta-ok>;
    meta-ok;
    done-testing;
}
else {
     skip-rest "Skipping author test";
     exit;
}
=end comment

