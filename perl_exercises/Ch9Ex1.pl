use strict;
use warnings;
main (@ARGV);


sub main
{
	@ARGV or die "No file name was provided\n";
	my $dir = $ARGV[0];
	my $number = 0;

	while(<ARGV>)
	{
		$number ++;
	}
	message("There are ". $number." lines in ".$dir );

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
