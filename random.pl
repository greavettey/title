#! /usr/bin/env perl
use strict; use warnings;
my ($n, @prefixes, @suffixes) = ("", (), ());
$n = $ARGV[0] || do { print "Please enter a name: "; $n = <STDIN>; chomp $n; $n; };
my @spl = do { open(my $raw, "<", "raw.txt") or die "Can't open < raw.txt: $!"; split(", ", <$raw>); };
(rindex $_, "The ", 0) == -1 ? push(@prefixes, $_) : push(@suffixes, $_ =~ s/The/the/r) foreach @spl;
1 + int rand(2) == 1 ? print "$n $suffixes[rand @suffixes]" : print "$prefixes[rand @prefixes] $n"; 