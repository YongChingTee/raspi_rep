use strict;
use warnings;
main (@ARGV);

sub main
{
	my $input = " ";
	print("Please input a text to be printed 5 times, 'quit' to stop: ");
	chomp($input = <STDIN>);
	while( $input ne "quit")
	{
		for my $k (1..5)
		{
			message($input);
		}
		print("Please input a text to be printed 5 times, 'quit' to stop: ");
		chomp($input = <STDIN>);
	}
	message("You input 'quit', therefore the program will be terminated");	
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
