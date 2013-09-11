use strict;
use warnings;
main (@ARGV);

sub main
{
	message("The filename is " . __FILE__);
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
