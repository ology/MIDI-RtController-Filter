package MIDI::RtController::Filter;

# ABSTRACT: Parent class of RtController filters

our $VERSION = '0.0100';

use Moo;
use strictures 2;
use Types::Standard qw(Bool Maybe);
use Types::MIDI qw(Channel Velocity);
use namespace::clean;

=head1 SYNOPSIS

  package Your::Filter;
  extends 'MIDI::RtController::Filter';

=head1 DESCRIPTION

C<MIDI::RtController::Filter> is the parent class of
L<MIDI::RtController> filters.

=head1 ATTRIBUTES

=head2 rtc

  $controller = $filter->rtc;

The required L<MIDI::RtController> instance provided in the
constructor.

=cut

has rtc => (
    is  => 'ro',
    isa => sub { die 'Invalid controller' unless ref($_[0]) eq 'MIDI::RtController' },
    required => sub { 1 },
);

=head2 channel

  $channel = $filter->channel;
  $filter->channel($number);

The current MIDI channel value between C<0> and C<15>.

Default: C<0>

=cut

has channel => (
    is      => 'rw',
    isa     => Channel,
    default => sub { 0 },
);

=head2 value

  $value = $filter->value;
  $filter->value($number);

Return or set the MIDI event value. This is a generic setting that can
be used by filters to set or retrieve state. This often a whole number
between C<0> and C<127>, but can be C<undef>.

Default: C<undef>

=cut

has value => (
    is      => 'rw',
    isa     => Maybe[Velocity],
    default => sub { undef },
);

=head2 trigger

  $trigger = $filter->trigger;
  $filter->trigger($number);

Return or set the trigger. This is a generic setting that
can be used by filters to set or retrieve state. This often a whole
number between C<0> and C<127> representing an event note or
control-change.

Default: C<undef>

=cut

has trigger => (
    is      => 'rw',
    isa     => Maybe[Velocity],
    default => sub { undef },
);

=head2 verbose

  $verbose = $filter->verbose;

Show progress.

=cut

has verbose => (
    is      => 'rw',
    isa     => Bool,
    default => sub { 0 },
);

1;

=head1 SEE ALSO

L<Moo>

L<MIDI::RtController>

L<MIDI::RtController::Filter-CC>

L<MIDI::RtController::Filter-Drums>

L<MIDI::RtController::Filter-Tonal>

L<Types::Standard>

=cut
