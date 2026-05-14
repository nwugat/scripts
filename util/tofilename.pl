#!/usr/bin/env perl

# Format input to be used as a file name

use strict;
use warnings;
use utf8;
use open ':std', ':encoding(UTF-8)';

my $input;

if (@ARGV) {
  $input = join '-', @ARGV;
}
else {
  local $/;  # undefine input record separator
  $input = <STDIN>;
}

print
  # to lowercase
  lc $input
    # remove newlines
    =~ s/\n//gr
    # replace common currencies
    =~ s/\$/dollar/gr
    =~ s/€/euro/gr
    =~ s/£/pound/gr
    =~ s/¥/yen/gr
    =~ s/₹/rupee/gr
    =~ s/₽/ruble/gr
    =~ s/₩/won/gr
    =~ s/₱/peso/gr
    # replace common math symbols
    =~ s/\+/plus/gr
    =~ s/=/equals/gr
    =~ s/≠/is-not/gr
    =~ s/[<≤]/less-than/gr
    =~ s/[>≥]/more-than/gr
    # replace misc symbols
    =~ s/@/at/gr
    # remove other symbols
    # =~ s/[\p{P}\p{S}]//gr #TODO this removes all dashes and dots :(
    # replace all whitespaces with a single dash
    =~ s/[\p{Dash}\s]+/-/gr
;
