package Stepford::Planner;
$Stepford::Planner::VERSION = '0.003000';
use strict;
use warnings;

use Carp qw( carp );

use Moose;

extends 'Stepford::Runner';

override new => sub {
    # Needed to escape modifier caller.
    local $Carp::CarpLevel = $Carp::CarpLevel + 1;
    carp
        'The Stepford::Planner class has been renamed to Stepford::Runner - use Stepford::Runner';
    return super();
};

1;

# ABSTRACT: Renamed to Stepford;:Runner

__END__

=pod

=head1 NAME

Stepford::Planner - Renamed to Stepford;:Runner

=head1 VERSION

version 0.003000

=head1 DESCRIPTION

This class has been renamed to Stepford::Runner. Use that instead.

=for Pod::Coverage .*

=head1 AUTHOR

Dave Rolsky <drolsky@maxmind.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by MaxMind, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
