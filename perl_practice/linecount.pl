use strict;
use warnings;

my $filename = "lines.txt";
open(FH, $filename);
my @lines = <FH>;
close(FH);
my $count = scalar @lines;
print("There are $count lines in $filename\n");
