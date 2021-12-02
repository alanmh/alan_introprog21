#ex03 - ex03.#!/usr/bin/env perl

#! /usr/bin/perl

print "(sqrt((a+b)^2))/c\n";
print "Insira o valor de a\n";
my$a = <STDIN>;

print "Insira o valor de b\n";
my$b = <STDIN>;

print "Insira o valor de c\n";
my$c = <STDIN>;

$sum = $a+$b;
$sum = $sum**2;
$sum = sqrt($sum);
$sum = $sum/$c;

print $sum;
print "\n";

exit;
