#!/usr/bin/perl

use strict;
use warnings;

use Math::Prime;

=head1 NAME

 prime.pl - test if a number is a prime or not

=head1 SYNOPSIS

 # see if 25 is a prime number
 
=cut

my $num = shift or die "perl prime.pl \$num";

my $is_prime = Math::Prime::is_prime($num);

if ($is_prime) {
    print "$num is a prime number\n";
}
else {
    print "$num is not a prime number\n";
}

1;

__END__

=head1 DESCRIPTION

This example program and package were inspired and shameless stolen from
'The anatomy of a Go Project' - http://darian.af/post/the-anatomy-of-a-golang-project/

At the inspiration of twitter/genehack, I decided to try to write something
similar for Perl.

=head1 TODO

=over 4

=item *

Make this whole thing easier to understand and use.

=back

=head1 BUGS

None yet

=head1 AUTHOR

Fred Moyer <fred@redhotpenguin.com>

=cut

