package Stepford::Types::Internal;
$Stepford::Types::Internal::VERSION = '0.002007';
use strict;
use warnings;

use MooseX::Types::Common::String qw( NonEmptyStr );
use MooseX::Types::Moose qw( ArrayRef Defined Str );
use MooseX::Types::Path::Class qw( File );
use Scalar::Util qw( blessed );

use MooseX::Types -declare => [
    qw(
        ArrayOfClassPrefixes
        ArrayOfDependencies
        ArrayOfFiles
        ArrayOfSteps
        Logger
        PossibleClassName
        Step
        )
];

subtype PossibleClassName, as Str, inline_as {
    $_[0]->parent()->_inline_check( $_[1] ) . ' && '
        . $_[1]
        . ' =~ /^\\p{L}\\w*(?:::\\w+)*$/';
};

subtype ArrayOfClassPrefixes, as ArrayRef [PossibleClassName], inline_as {
    $_[0]->parent()->_inline_check( $_[1] ) . " && \@{ $_[1] } >= 1";
};

coerce ArrayOfClassPrefixes, from PossibleClassName, via { [$_] };

subtype ArrayOfDependencies, as ArrayRef [NonEmptyStr];

coerce ArrayOfDependencies, from NonEmptyStr, via { [$_] };

subtype ArrayOfFiles, as ArrayRef [File], inline_as {
    $_[0]->parent()->_inline_check( $_[1] ) . " && \@{ $_[1] } >= 1";
};

coerce ArrayOfFiles, from File, via { [$_] };

duck_type Logger, [qw( debug info notice warning error )];

role_type Step, { role => 'Stepford::Role::Step' };

subtype ArrayOfSteps, as ArrayRef [Step];

coerce ArrayOfSteps, from Step, via { [$_] };

1;

# ABSTRACT: Internal type definitions for Stepford

__END__

=pod

=encoding UTF-8

=head1 NAME

Stepford::Types::Internal - Internal type definitions for Stepford

=head1 VERSION

version 0.002007

=head1 AUTHOR

Dave Rolsky <drolsky@maxmind.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by MaxMind, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
