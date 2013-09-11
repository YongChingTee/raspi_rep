use strict;
use warnings;
main (@ARGV);

sub main
{
	my $filename = 'test2.txt';
	my @lines;

	#if($^O eq 'MSWin32')
	#{
		@lines = `perl client.pl "$filename"`;	
#	}
#	else
#	{
#		@lines= `client.pl $filename`;
#	}
	
	if($?)
	{
		print STDERR "client.pl error ", $? >> 8,"\n";
	}
	else
	{
		print "Number of lines: ", scalar @lines, "\n";
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
