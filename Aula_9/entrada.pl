#exemplo05

#!usr/bin/perl

$input  = $ARGV[0];
$output = $ARGV[1];

open(SEQ, "<$input")  || die "Nao foi possivel abrir o arquivo $input\n";
open(OUT, ">$output") || die "Nao foi possivel abrir o arquivo $output\n";

while (<SEQ>) { #operador <> itera linha por linha
   print OUT $_;
}

close SEQ;

exit;
