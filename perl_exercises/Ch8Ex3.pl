#use strict;
use warnings;
main (@ARGV);


sub main
{
	my @array;
	my $input;
	print("Enter a number to be inserted into the array, 'quit' to stop: ");
	chomp($input = <STDIN>);
	while($input ne "quit")
	{
		@array[scalar(@array)] = $input;
		print("Enter a number to be inserted into the array, 'quit' to stop: ");
		chomp($input = <STDIN>);	
	}
	message("'quit' has been entered, the following is the summary of the array: ");
	print("The numbers you entered: ", join(',', @array),"\n");
	message("Number of entries in the array: ".scalar(@array));
	my $sum = 0;
	my $largest = -9999;
	my $smallest = 9999;
	foreach(@array)
	{
#		if($_ > $largest)
#		{
#			$largest= $_;
#		}
#		if($_ < $smallest)
#		{
#			$smallest = $_;
#		}
		$largest = $_ if($largest < $_);
		$smallest = $_ if($smallest > $_);
		$sum += $_;
	}
	message("Sum of the values in the array: ".$sum);
	message("Average of the values in the array: ".($sum/scalar(@array)));
	message("Largest number: ".$largest);
	message("Smallest number: ".$smallest);
	
			
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
