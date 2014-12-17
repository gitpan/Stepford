package Stepford::Role::Step::Unserializable;
$Stepford::Role::Step::Unserializable::VERSION = '0.003001';
use strict;
use warnings;
use namespace::autoclean;

use Moose::Role;

1;

# ABSTRACT: A role for steps with unserializable productions

__END__

=pod

=head1 NAME

Stepford::Role::Step::Unserializable - A role for steps with unserializable productions

=head1 VERSION

version 0.003001

=head1 DESCRIPTION

If your step class consumes this role, then that step will not be run in a
child process even when running a parallel plan with L<Stepford::Runner>. See
the L<Stepford::Runner> docs for more details.

=head1 AUTHOR

Dave Rolsky <drolsky@maxmind.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by MaxMind, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
