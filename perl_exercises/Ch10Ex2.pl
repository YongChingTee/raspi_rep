use strict;
use warnings;
main (@ARGV);

sub main
{
	my $result;
	my $script = $ARGV[0];
	unshift (@ARGV, 'perl') if(substr($ARGV[0], -3) eq '.pl');
	$result = system("@ARGV >$script.out 2>$script.err");

	if($result)
	{
		print STDERR "@ARGV gave error ", $? >> 8, "\n";
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
