use strict;
use warnings;
main (@ARGV);

sub main
{
	my $var = 'X';
#	for(my $k = 1; $k < 51; $k++)
	for my $k (1..50)
	{
		print($var x $k . "\n");
	}	
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
