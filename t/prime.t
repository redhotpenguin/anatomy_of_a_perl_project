#/usr/bin/perl

# do this every time, always
use strict;

# enable warnings, but in tests make them fatal
use warnings FATAL => 'all';

# run 'perldoc Test::More' to see how to use this module
use Test::More;

BEGIN {
    # make sure Math::Prime compiles
    use_ok('Math::Prime');

    # make sure Math::Prime provides the is_prime function
    can_ok('Math::Prime', 'is_prime');
}

# undef means undefined, there is no value, kind of like null
# this is different than 0, which is defined but false
is(Math::Prime::is_prime(0), undef, '1 is not a prime number');
is(Math::Prime::is_prime(1), undef, '1 is not a prime number');

# check that the function returns 1 for a prime number (essentially true)
is(Math::Prime::is_prime(2), 1, '2 is a prime number');
is(Math::Prime::is_prime(3), 1, '3 is a prime number');

is(Math::Prime::is_prime(4), undef, '4 is not a prime number');

is(Math::Prime::is_prime(5), 1, '5 is a prime number');

# tell perl that we are done testing
done_testing();