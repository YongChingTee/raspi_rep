use strict;
use warnings;
main (@ARGV);

sub main
{
	my $path = "/usr/local/lib/locale/US_C.C/message.dat";
	my $split = '/';
	my @directories = split ($split, $path);
	print(join(':', @directories)."\n");
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
