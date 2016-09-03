package Bencher::Scenario::ArrayVsHashBuilding;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark building array vs hash',
    participants => [
        {
            name=>'array',
            code_template=>'state $elems=<elems>; my $ary = []; for my $elem (@$elems) { push @$ary, $elems }; $ary',
        },
        {
            name=>'hash',
            code_template=>'state $elems=<elems>; my $hash = {}; for my $elem (@$elems) { $hash->{$elem} = 1 }; $hash',
        },
    ],
    datasets => [
        {name=>'elems=1'    , args=>{elems=>[1]}},
        {name=>'elems=10'   , args=>{elems=>[1..10]}},
        {name=>'elems=100'  , args=>{elems=>[1..100]}},
        {name=>'elems=1000' , args=>{elems=>[1..1000]}},
        {name=>'elems=10000', args=>{elems=>[1..10000]}},
    ],
};

1;
# ABSTRACT:

=head1 append:SEE ALSO

L<Bencher::Scenario::HashBuilding>
