#!usr/bin/perl

print "Sequência:\n";
$seq = <STDIN>;

chomp $seq;

$seq =~ tr/ATCG/tagc/;

$seq = reverse($seq);

print "Complemento reverso: $seq.\n";

exit;
