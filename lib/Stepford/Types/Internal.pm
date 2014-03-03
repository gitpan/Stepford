package Stepford::Types::Internal;
$Stepford::Types::Internal::VERSION = '0.000002';
use strict;
use warnings;

use MooseX::Types::Common::String qw( NonEmptyStr );
use MooseX::Types::Moose qw( ArrayRef Defined Str );
use MooseX::Types::Path::Class qw( File );
use Scalar::Util qw( blessed );

use MooseX::Types -declare => [
    qw(
        ArrayOfDependencies
        ArrayOfFiles
        Step
        )
];

subtype ArrayOfDependencies, as ArrayRef [NonEmptyStr];

coerce ArrayOfDependencies, from NonEmptyStr, via { [$_] };

subtype ArrayOfFiles, as ArrayRef [File], inline_as {
    $_[0]->parent()->_inline_check( $_[1] ) . " && \@{ $_[1] } >= 1";
};

coerce ArrayOfFiles, from File, via { [$_] };

role_type Step, { role => 'Stepford::Role::Step' };

1;

# ABSTRACT: Internal type definitions for Stepford

__END__

=pod

=head1 NAME

Stepford::Types::Internal - Internal type definitions for Stepford

=head1 VERSION

version 0.000002

=head1 AUTHOR

Dave Rolsky <drolsky@maxmind.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by MaxMind, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
