use strict;
use warnings;
main (@ARGV);

sub main
{
	my @files = glob ("$ARGV[0]/*");
	print "Files in ", $ARGV[0], ": ", scalar(@files), "\n";

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
