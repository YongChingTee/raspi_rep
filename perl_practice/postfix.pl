use strict;
use warnings;
main (@ARGV);

sub main
{
	my @list = ('one', 'two', 'three', 'four', 'five');
	message("$_") foreach @list;	
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
