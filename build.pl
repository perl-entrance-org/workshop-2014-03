#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

use Path::Tiny;

my @slides = qw/ intro.md array-func.md qw.md hash.md hash-func.md reference.md /;
my $slide = join("\n---\n", map {
    my $str = path($_)->slurp_utf8;
    $str =~ s/\n(##?)/\n___\n$1/g;
    $str
} @slides);
path("slide.md")->spew_utf8($slide);
