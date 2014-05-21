package Stepford::Trait::StepProduction;
$Stepford::Trait::StepProduction::VERSION = '0.002000';
use strict;
use warnings;
use namespace::autoclean;

use Moose::Role;

sub Moose::Meta::Attribute::Custom::Trait::StepProduction::register_implementation
{
    return __PACKAGE__;
}

1;

#ABSTRACT: A trait for attributes which are a step production

__END__

=pod

=head1 NAME

Stepford::Trait::StepProduction - A trait for attributes which are a step production

=head1 VERSION

version 0.002000

=head1 AUTHOR

Dave Rolsky <drolsky@maxmind.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by MaxMind, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
