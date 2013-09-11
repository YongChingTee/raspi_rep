use strict;
use warnings;
main (@ARGV);

sub main
{
	my %hash = ("this" => "foo", "that" => "bar", "other"=>"baz");
	foreach my $k (sort keys %hash)
	{
		my $v = $hash{$k};
		message("$k is $v");
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
