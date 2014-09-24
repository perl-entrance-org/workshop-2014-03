use strict;
use warnings;
use Data::Dumper;

my $supporters = {
    hoto => {
        age  => 24,
        food => [ 'sushi' ],
    },
    papix => {
        age  => 25,
        food => [ 'sushi', 'ramen' ],
    },
    ytnobody => {
        age  => 'XX',
        food => [ 'sushi', 'gyoza' ],
    },
};

my $ytnobody = $supporters->{ytnobody}->{food};
print Dumper $ytnobody;
