#use strict;
#use warnings;
main(@ARGV);

sub main
{
	@ARGV or die "No filename supplied\n";
	
	for my $file (@ARGV)
	{
		open (FILE, '<', $file) or
			die "Cannot open $file: $!\n";
		while(<FILE>)
		{
			print;
		}
		close FILE;
	}
}

