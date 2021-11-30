#! /usr/bin/perl
# script para testar loop com for

#exemplo 05

#print "\nExemplo 05:\n";

#for ($i = 0; $i < 5; $i=1) {
#  print "$i\n";
#}

#exit;


# exemplo06
# for() para imprimir conteudo de arrays

@seqs = ("ATGGCGTAGATCG", "TAAGCCCCGGTATATTTGACCCCGAT", "GATAGAG");

$seqs = @seqs; #numero de elementos do array

print "\nExemplo 06:\n";

$soma = 0;

for ( $i = 0; $i < $seqs; $i++ ) {
  $soma = $soma + length($seqs[$i]);
  print "$soma\n";

}

$soma = $soma / @seqs;

print "média = $soma\n";

exit;
