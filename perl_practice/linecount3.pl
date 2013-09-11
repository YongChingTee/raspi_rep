use strict;
use warnings;
use IO::File;
main(@ARGV);

sub main
{
	my $filename = shift || "lines1.txt";
	my $count = countlines($filename);
	message("There are $count lines in $filename\n");
}

sub countlines
{
	my $filename = shift;
	error("countlines: missing filename") unless $filename;
	my $fh = IO::File->new ($filename, "r");
	if(!$fh)
	{
		error("cannot open $filename ($!)\n");
	}
	my $count = 0;
	$count ++ while($fh->getline);
	return $count;
}

sub message
{
	my $m = shift or return;
	print("$m\n");
}

sub error
{
	my $e = shift || 'unkown error';
	print("$0: $e\n");
	exit 0;
}
