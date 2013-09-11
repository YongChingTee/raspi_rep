use strict;
use warnings;
main (@ARGV);

sub main
{
	my $tries = 0;
	my $attempts = 3;
	my $pin = " ";
	my $correct = "012345";
	print("Enter pin: ");
	$pin = <STDIN>;
	$tries++;
	chomp $pin;
	while($pin ne $correct && $tries < $attempts)
	{
		print("Incorrect pin. Enter pin again: ");
		$pin = <STDIN>;
		chomp $pin;
		$tries ++;
	}
	if($pin eq $correct)
	{
		message("Pin is correct");
	}
	else
	{
		message("Too many incorrect tries, try again later");
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
