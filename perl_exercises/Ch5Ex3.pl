use strict;
use warnings;
main (@ARGV);

sub main
{
	my $string = "Did you feed the dog today?";
	my $find = "feed";

	my $length = length $find;
	my $index = index($string, $find);

	my $action = substr($string, $index, $length);
	print("At $index, $length: [$action]\n");

	my $copy = $string;
	my $replace = "dog";
	my $offset = index($copy, $replace);
	my $len = length $replace;
	substr($copy, $offset, $len) = "cat";
	print("New string: [$copy]\n");

	my $copy2 = $string;
	substr($copy2, $offset, $len) = "Labrador";
	print("New string: [$copy2]\n");

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
