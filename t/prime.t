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
    can_ok( 'Math::Prime', 'is_prime' );
}

# undef means undefined, there is no value, kind of like null
# this is different than 0, which is defined but false
is( Math::Prime::is_prime(0), undef, '1 is not a prime number' );
is( Math::Prime::is_prime(1), undef, '1 is not a prime number' );

# check that the function returns 1 for a prime number (essentially true)
is( Math::Prime::is_prime(2), 1, '2 is a prime number' );
is( Math::Prime::is_prime(3), 1, '3 is a prime number' );

is( Math::Prime::is_prime(4), undef, '4 is not a prime number' );

is( Math::Prime::is_prime(5), 1, '5 is a prime number' );


# let's test the first hundred primes, and first hundred non primes

my @first_hundred_primes = (
    2,   3,   5,   7,   11,  13,  17,  19,  23,  29,
    31,  37,  41,  43,  47,  53,  59,  61,  67,  71,
    73,  79,  83,  89,  97,  101, 103, 107, 109, 113,
    127, 131, 137, 139, 149, 151, 157, 163, 167, 173,
    179, 181, 191, 193, 197, 199, 211, 223, 227, 229,
    233, 239, 241, 251, 257, 263, 269, 271, 277, 281,
    283, 293, 307, 311, 313, 317, 331, 337, 347, 349,
    353, 359, 367, 373, 379, 383, 389, 397, 401, 409,
    419, 421, 431, 433, 439, 443, 449, 457, 461, 463,
    467, 479, 487, 491, 499, 503, 509, 521, 523, 541
);

foreach my $prime (@first_hundred_primes) {
    is( Math::Prime::is_prime($prime), 1, "$prime is a prime number" );
}

my @first_hundred_non_primes = (
    0,  1,  4,  6,  8,  9,   10,  12,  14,  15, 16, 18, 20, 21,
    22, 24, 25, 26, 27, 28,  30,  32,  33,  34, 35, 36, 38, 39,
    40, 42, 44, 45, 46, 48,  49,  50,  51,  52, 54, 55, 56, 57,
    58, 60, 62, 63, 64, 65,  66,  68,  69,  70, 72, 74, 75, 76,
    77, 78, 80, 81, 82, 84,  85,  86,  87,  88, 90, 91, 92, 93,
    94, 95, 96, 98, 99, 100, 102, 104, 105, 106
);

foreach my $non_prime (@first_hundred_non_primes) {
    is( Math::Prime::is_prime($non_prime),
        undef, "$non_prime is not a prime number" );
}

# tell perl that we are done testing
done_testing();