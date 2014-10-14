package Stepford::FinalStep;
$Stepford::FinalStep::VERSION = '0.002008';
use strict;
use warnings;
use namespace::autoclean;

use Moose;
use MooseX::StrictConstructor;

with 'Stepford::Role::Step';

# We always want this step to run
sub last_run_time {
    return undef;
}

sub run {
    my $self = shift;

    $self->logger()->info('Completed execution');

    return;
}

__PACKAGE__->meta()->make_immutable();

1;

# ABSTRACT: The final step for all Stepford runs

__END__

=pod

=encoding UTF-8

=head1 NAME

Stepford::FinalStep - The final step for all Stepford runs

=head1 VERSION

version 0.002008

=head1 DESCRIPTION

This step just logs the message "Completed execution". It is always run as the
last step when calling C<run()> on a L<Stepford::Planner> object.

=for Pod::Coverage .*

=head1 AUTHOR

Dave Rolsky <drolsky@maxmind.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by MaxMind, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
