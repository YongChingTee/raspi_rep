use strict;
use warnings;
main (@ARGV);

sub main
{
	my @array = (1, "two", 3, 4);
	message("there are ". scalar@array . " elements in the array");
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
