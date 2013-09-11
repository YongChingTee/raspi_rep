use strict;
use warnings;
main (@ARGV);

sub main
{
	print("Enter a string: ");
	my $test = <STDIN>;
	print "\l$test\n";
	print "\L$test\n";
	print "\u$test\n";
	print "\U$test\n";
	print "\Q$test\E\n";

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
