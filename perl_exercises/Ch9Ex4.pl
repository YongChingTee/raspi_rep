use strict;
use warnings;
main (@ARGV);


sub main
{
	print("Enter a file name: ");
	chomp(my $filename = <STDIN>);
	print("Enter your first name: ");
	chomp(my $first = <STDIN>);
	print("Enter your last name: ");
	chomp(my $last = <STDIN>);
	print("Enter your email address: ");
	chomp(my $email =<STDIN>);

	open( HTML, '>', $filename) or die "Error opening $filename: $!";
	print HTML <<__END__;
	<HTML><HEAD>
	<TITTLE>Chapter 9 Exercise 4 HTML page for $first $last</TITTLE>
	</HEAD>
	<BODY><H1>Dummy HTML page</H1>
	This is a simple HTML page for <strong>$first $last</strong>
	<P>
	He has the email <ADDRESS><A HREF="mailto::$email">$first $last</ADDRESS>
	</P>
	</BODY></HTML>
	__END__

	close HTML;
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
