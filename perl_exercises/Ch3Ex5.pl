use strict;
use warnings;
main (@ARGV);

sub main
{
	my @array = ("yogi", "booboo", "grizzly", "rupert","greppy","teddy", "bungle", "care", "frozzie");
	my ($a, $b, $c, $d) = @array[-4 .. -1] ;
	print("$a $b $c $d\n");

	my ($x, @new) = @array[0 .. 3];
	print("$x @new\n");

	@array =  (@array, @new);
	print("@array\n");
}


sub message
{
	my $m = shift or return;
	print("$m\n");
}

sub error
{
	my $e= shift || 'unknown error';
	print("$0: $e\n");
	exit 0;
}
