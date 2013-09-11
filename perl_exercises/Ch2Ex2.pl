use strict;
use warnings;
main (@ARGV);

sub main
{
	my @numbers = (1, 5, 9, 3.14159, 2);
	print("With interpolation : @numbers\n");
	print("Without interpolation : ", @numbers, "\n");

	$"= "\n";
	print("@numbers\n");
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
