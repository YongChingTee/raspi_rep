use strict;
use warnings;
main (@ARGV);

sub main
{
	print($ARGV[1], "\n");
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
