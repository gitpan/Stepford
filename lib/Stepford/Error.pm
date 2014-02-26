package Stepford::Error;
$Stepford::Error::VERSION = '0.000001';
use strict;
use warnings;

use Moose;

extends 'Throwable::Error';

__PACKAGE__->meta()->make_immutable();

1;

# ABSTRACT: A Stepford exception object

__END__

=pod

=head1 NAME

Stepford::Error - A Stepford exception object

=head1 VERSION

version 0.000001

=head1 DESCRIPTION

This is a bare subclass of L<Throwable::Error>. It does not add any methods of
its own, for now.

=head1 AUTHOR

Dave Rolsky <drolsky@maxmind.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by MaxMind, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
