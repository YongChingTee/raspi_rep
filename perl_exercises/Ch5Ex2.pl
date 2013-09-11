use strict;
use warnings;
main (@ARGV);

sub main
{
	my $Sep = ':';
	my $path = $ENV{PATH};
	my @dirs = split $Sep, $path;
	print "Number of directories: ", scalar(@dirs), "\n";
	print "Directories:\n", join ("\n", @dirs), "\n";	
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
