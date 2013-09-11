use strict;
use warnings;
main (@ARGV);


sub main
{
	my $Sep = $^O eq 'MSWin32' ? ';' : ':';
	
	foreach my $dir (split /$Sep/, $ENV{PATH})
	{
		if( -d $dir)
		{
			print( "$dir exists ");
			if( -x $dir)
			{
				print( "and we ");
			}
			else
			{
				print( "but we do not ");
			}
		print( "have execute access\n");
		}
		else
		{
			print( "$dir does not exist!\n");
		}
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
