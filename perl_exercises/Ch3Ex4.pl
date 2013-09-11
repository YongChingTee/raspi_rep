use strict;
use warnings;
main (@ARGV);

sub main
{
	my @array = ("yogi", "booboo", "grizzly", "rupert","baloo","teddy", "bungle", "care");
	my $k = 0;
	for($k = 0; $array[$k]; $k++)
	{
		if($array[$k] eq "baloo")
		{
			$array[$k] = "greppy";
		}
	}
	$array[@array] =  "fozzie";
	print("@array\n");
	print(scalar(@array));
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
