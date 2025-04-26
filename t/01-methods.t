#!/usr/bin/env perl
use strict;
use warnings;

use Test::More;

use_ok 'MIDI::RtController::Filter';

my $obj = new_ok 'MIDI::RtController::Filter';

ok !$obj->verbose, 'verbose';

done_testing();
