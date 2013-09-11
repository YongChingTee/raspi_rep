use strict;
use warnings;
main (@ARGV);

sub main
{
	print("Enter a first name: ");
	my $first = <STDIN>;
	chomp $first;
	
	print "Enter a last name: ";
	my $last = <STDIN>;
	chomp $last;

	my @name = ($first, $last);
	print("@name\n");
		
	my %names = ("first" => $first, "last" => $last); 
	print(%names, "\n");
		
	@name = %names;
	print("@name\n");
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
