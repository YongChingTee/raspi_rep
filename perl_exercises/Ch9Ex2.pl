use strict;
use warnings;
main (@ARGV);


sub main
{
	@ARGV or die "No input file provided\n";
	my $dir = shift;
	open(FILE, $dir) or die "Cannot open $dir\n";
	$/ = "\n\n"; #$/ is changed to "\n\n" so that perl reads an entire paragraph at a time
	while(<FILE>)
	{
		chomp;
		print">>>$_<<<\n";
	}
	close (FILE);
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
