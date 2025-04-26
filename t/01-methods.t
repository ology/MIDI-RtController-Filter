#!/usr/bin/env perl
use strict;
use warnings;

use Test::More;

use_ok 'MIDI::RtController::Filter';

new_ok 'MIDI::RtController::Filter';

my $obj = new_ok 'MIDI::RtController::Filter' => [
    verbose => 1,
];

is $obj->verbose, 1, 'verbose';

done_testing();
