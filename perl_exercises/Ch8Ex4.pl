use strict;
use warnings;

while(1)
{
	print "Perk > ";
	chomp(my $line = <STDIN>);
	
	eval $line;
}
