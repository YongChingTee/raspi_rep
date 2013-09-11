use strict;
use warnings;
main (@ARGV);

sub main
{
	print("Enter the text to print: ");
	my $text = <STDIN>;
	chomp $text;
	print("Enter the number of times to print: ");
	my $num = <STDIN>;
	chomp $num;
	my $i = 0;
#	for($i = 0; $i < $num; $i++)
#	{
#		message($i .' '.$text);
#	}
	print("The text [$text] multiplied [$num] times is: " , $text x $num, "\n");

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
