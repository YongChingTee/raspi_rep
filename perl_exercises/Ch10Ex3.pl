@ARGV or die "Please supply a filename";
my $lines;
my $bytes;

#use uncompress in a pipe
open( IN, "uncompress -c @ARGV[0] |") or die ("Could not open $ARGV[0]: $!");

while(<IN>)
{
	$lines ++;
	$bytes += length; #implicit: length($_)
}

close IN;

print "Lines: $lines, bytes: $bytes\n";
