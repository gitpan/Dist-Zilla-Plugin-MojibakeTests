package Dist::Zilla::Plugin::MojibakeTests;
# ABSTRACT: Release tests for source encoding

use strict;
use warnings qw(all);

our $VERSION = '0.5'; # VERSION

use Moose;
extends q(Dist::Zilla::Plugin::InlineFiles);

__PACKAGE__->meta->make_immutable;
no Moose;

1;

=pod

=encoding utf8

=head1 NAME

Dist::Zilla::Plugin::MojibakeTests - Release tests for source encoding

=head1 VERSION

version 0.5

=head1 SYNOPSIS

In F<dist.ini>:

    [MojibakeTests]

=head1 DESCRIPTION

This is an extension of L<Dist::Zilla::Plugin::InlineFiles>, providing the following file:

    xt/release/mojibake.t - a standard Test::Mojibake test

=for test_synopsis 1;
__END__

=head1 AUTHOR

Stanislaw Pusep <stas@sysd.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Stanislaw Pusep.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

__DATA__
___[ xt/release/mojibake.t ]___
#!perl

use strict;
use warnings qw(all);

use Test::More;

## no critic (ProhibitStringyEval, RequireCheckingReturnValueOfEval)
eval q(use Test::Mojibake);
plan skip_all => q(Test::Mojibake required for source encoding testing) if $@;

all_files_encoding_ok();
