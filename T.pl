#!/usr/bin/env perl6

use v6;
use lib '.';
use T;
my $t = T.new;
say "\$t.a = {$t.a}";
say "\$t.b = {$t.b}";
say "\$t.c = {$t.c.defined ?? $t.c !! 'undefined'}";
$t.set_b(20);
$t.c = 'defined';
say "\$t.a = {$t.a}";
say "\$t.b = {$t.b}";
say "\$t.c = {$t.c.defined ?? $t.c !! 'undefined'}";
