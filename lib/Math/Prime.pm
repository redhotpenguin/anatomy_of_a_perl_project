package Math::Prime;

=head1 NAME

  Math::Prime - Check to see if a number is prime

=cut

=head1 SYNOPSIS

 $num = 4;

 $is_prime = Math::Prime::is_prime( $num );

 print "Number $num is prime\n" if $is_prime;

=cut


# do this in every single package, until you understand when not to
use strict;
use warnings;

=head1 METHODS

=head2 C<is_prime>

Returns true if a number is prime.

  $is_prime = Math::Prime::is_prime( 4 );

=cut

sub is_prime {

    # shift returns the argument passed to the function
    my $num = shift;

    # 0 and 1 are not primes.
    if ( $num < 2 ) {
        return;
    }

    # 2 is the only even number that is prime.
    if ( $num == 2 ) {
        return 1;
    }

    #  All other even numbers are not prime.
    if ( $num % 2 == 0 ) {
        return;
    }

    my $prime = 3;

    # For each divisor checked, close the gap from both sides.
    while ( int( $num / $prime ) > $prime ) {

        if ( $num % $prime == 0 ) {
            return;
        }
        $prime = $prime + 2;
    }
    return 1;
}

1;