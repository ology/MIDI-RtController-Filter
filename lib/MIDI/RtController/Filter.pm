package MIDI::RtController::Filter;

# ABSTRACT: Parent class of RtController filters

our $VERSION = '0.0100';

use Moo;
use strictures 2;
use Types::Standard qw(Bool);
use namespace::clean;

=head1 SYNOPSIS

  package Your::Filter;
  extends 'MIDI::RtController::Filter';

=head1 DESCRIPTION

C<MIDI::RtController::Filter> is the parent class of
L<MIDI::RtController> filters.

=head1 ATTRIBUTES

=head2 verbose

  $verbose = $filter->verbose;

Show progress.

=cut

has verbose => (
    is      => 'rw',
    isa     => Bool,
    default => sub { 0 },
);

=head1 METHODS

=head2 new

  $x = MIDI::RtController::Filter->new(verbose => 1);

Create a new C<MIDI::RtController::Filter> object.

=for Pod::Coverage BUILD

=cut

1;
__END__

=head1 SEE ALSO

L<Moo>

L<http://somewhere.el.se>

=cut
