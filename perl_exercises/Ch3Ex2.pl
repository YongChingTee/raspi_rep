use strict;
use warnings;
main (@ARGV);

sub main
{
	my %hash = (	"John" => "Norman", 
			"Robert" => "Anson", 
			"Christopher" => "Fowler", 
			"Robert" => "Harris", 
			"Dan" => "Simmons");
	print("Enter First Name: ");
	my $key = <STDIN>;
	chomp $key;
	printf "Full name: $key $hash{$key}\n";
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
