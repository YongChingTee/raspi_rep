use strict;
use warnings;
main (@ARGV);

sub main
{
	my %machines = (	'user1' => 'yogi',
				'user2' => 'booboo',
				'user3' => 'rupert',
				'user4' => 'tedddy',
				'user5' => 'care',
				'user6' => 'winnie',
				'user7' => 'sooty',
				'user8' => 'padders',
				'user9' => 'polar',
				'user10' => 'grizzly',
				'user11' => 'baloo',
				'user12' => 'bungle',
				'user13' => 'fozzie',
				'user14' => 'huggy',
				'user15' => 'barnaby',
				'user16' => 'hair',
				'user17' => 'greppy');
	my @key = keys %machines;
	my @value = values %machines;
#	print "\@key: ", (join ':', @key), "\n";
#	print "\@value: ", (join ':', @value), "\n";
	my $k = 0;
	for($k = 0; $k < scalar @key; $k++)
	{
		message("$key[$k] : $value[$k]");
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
