package Nephia::Setup::Plugin::Assets::JQuery;
use 5.008005;
use strict;
use warnings;
use parent 'Nephia::Setup::Plugin';
use Nephia::Setup::Plugin::Assets::JQuery::Source_1_10_1;

our $VERSION = "0.01";

sub fix_setup {
    my $self = shift;
    $self->setup->action_chain->append('Assets::JQuery' => \&_assets_jquery);
}

sub _assets_jquery {
    my ($setup, $context) = @_;
    my $data = Nephia::Setup::Plugin::Assets::JQuery::Source_1_10_1->data;
    $setup->spew(qw/static js jquery.min.js/, $data);
}

1;
__END__

=encoding utf-8

=head1 NAME

Nephia::Setup::Plugin::Assets::JQuery -  Download and deploy jQuery into your webapp

=head1 SYNOPSIS

    $ nephia-setup YourApp --plugins Assets::JQuery

=head1 DESCRIPTION

Nephia::Setup::Plugin::Assets::JQuery is downloader for Nephia::Setup that is downloads jQuery.

=head1 LICENSE

Copyright (C) ytnobody.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

ytnobody E<lt>ytnobody@gmail.comE<gt>

=cut

