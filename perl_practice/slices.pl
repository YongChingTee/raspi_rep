use strict;
use warnings;
main (@ARGV);


sub main
{
	my @array = (1 .. 10);
	message(join(':', @array[0 .. 2,7]));
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
