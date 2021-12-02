#ex03 - ex03.#!/usr/bin/env perl

#! /usr/bin/perl

@sequences = ();
print "Este programa converterá três sequências em ordem inversa, em formato fasta\n";
print "Insira a primeira sequência\n";
$seq1 = <STDIN>;

$sequences[0] = "\>SEQUENCE_1". scalar reverse($seq1);

print "Insira a segunda sequência\n";
$seq2 = <STDIN>;

$sequences[1] = "\>SEQUENCE_2". scalar reverse($seq2);

print "Insira a terceira sequência\n";
$seq3 = <STDIN>;

$sequences[2] = "\>SEQUENCE_3". scalar reverse($seq3);

print "\n Output: \n";
print "\n";

print join("\n", @sequences, "\n");

exit;
