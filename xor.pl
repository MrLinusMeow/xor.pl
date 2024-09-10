#!/usr/bin/env perl

unless ($ARGV[0]){
	print "\e[107;31;1;5;7m___NULL___\e[0m\n";
	exit;
}
unless ($ARGV[1]){
	print "@ARGV\n";
	exit;
}
my @answer;
my $i = 0;
my $j = 0;
until (scalar @ARGV == 1){
	my @next = split //, @ARGV[1];
	foreach (split //, @ARGV[0]){
		if(scalar @next == $j){ $j = 0 }
		@answer[$i] = $_ ^ @next[$j];
		++$j;
		++$i;
	}
	$j = 0;
	$i = 0;
	shift @ARGV;
	@ARGV[0] = join '', @answer;
}
print "\e[1;102;30m", join '',@answer ,"\e[0m\n";
exit;
