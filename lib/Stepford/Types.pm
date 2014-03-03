package Stepford::Types;
$Stepford::Types::VERSION = '0.000002';
use strict;
use warnings;

use MooseX::Types::Moose;

use parent 'MooseX::Types::Combine';

__PACKAGE__->provide_types_from(
    qw(
        MooseX::Types::Moose
        Stepford::Types::Internal
        )
);

1;

# ABSTRACT: Type library used in Stepford classes/roles

__END__

=pod

=head1 NAME

Stepford::Types - Type library used in Stepford classes/roles

=head1 VERSION

version 0.000002

=head1 AUTHOR

Dave Rolsky <drolsky@maxmind.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by MaxMind, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
