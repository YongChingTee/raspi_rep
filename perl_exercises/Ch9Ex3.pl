#use strict;
use warnings;
main (@ARGV);


sub main
{
	@ARGV or die "No input was provided\n";
	my $filename = $ARGV[0] or die "No file name was provided\n";
	my $line = $ARGV[1]or die "No line number was provided\n";
	open(FILE, $filename);
	if(!FILE)
	{
		 die "File could not be openned\n";
	}
	my $count = 1;
	my $done = 0;
	while(<FILE>)
	{
		if($count++ == $line)
		{
			chomp $_;
			print $_," (line ",$line, ")\n";
			$done = 1;
		}
	}
	if($done == 0)
	{
		message("Line number provided was out of range");
	}
	close FILE;

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
