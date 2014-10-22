package Stepford::LoggerWithMoniker;
$Stepford::LoggerWithMoniker::VERSION = '0.002006';
use strict;
use warnings;

use Stepford::Types qw( Logger Str );

use Moose;

my $Levels = [qw( debug info notice warning error )];

has _logger => (
    is       => 'ro',
    isa      => Logger,
    init_arg => 'logger',
    required => 1,
    handles  => $Levels,
);

has _moniker => (
    is       => 'ro',
    isa      => Str,
    init_arg => 'moniker',
    required => 1,
);

around $Levels => sub {
    my $orig    = shift;
    my $self    = shift;
    my $message = shift;

    $message = '[' . $self->_moniker() . '] ' . $message;

    return $self->$orig( $message, @_ );
};

__PACKAGE__->meta()->make_immutable();

1;

# ABSTRACT: The logger used by Step classes.

__END__

=pod

=encoding UTF-8

=head1 NAME

Stepford::LoggerWithMoniker - The logger used by Step classes.

=head1 VERSION

version 0.002006

=head1 DESCRIPTION

This class wraps the logger passed in by the Planner. It prefixes the messages
with the step name. This class has no user-facing parts.

=head1 AUTHOR

Dave Rolsky <drolsky@maxmind.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by MaxMind, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
