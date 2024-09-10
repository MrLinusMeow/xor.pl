#!/usr/bin/env perl
unless ($ARGV[0]){
	print "\e[107;31;1;5;7m___NULL___\e[0m\n";
	exit;
}

my $a;
foreach (@ARGV) {
	$a = $a ^ $_;
}
print "$a\n";
exit;
