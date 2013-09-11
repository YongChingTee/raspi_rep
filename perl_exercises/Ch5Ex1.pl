use strict;
use warnings;
main (@ARGV);

sub main
{
	my @array = (0, 1, 2, 3, 4);
	message(join(": ", @array));


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
