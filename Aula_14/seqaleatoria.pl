#exemplo02
#!/usr/bin/perl/

## --------------------------------------------------------------------- ##
##                                                                       ##
##  SCRIPT: seqAleatoria.pl                                 04.11.2021   ##
##                                                                       ##
##  DESCRIPTION: script para exemplificar subrotinas                     ##
##                                                                       ##
##  USAGE: perl seqAleatoria.pl                                          ##
##                                                                       ##
##  AUTHOR: Tatiana Torres    tttorres at ib.usp.br                      ##
##                                                                       ##
## --------------------------------------------------------------------- ##

use lib '/home/alan/Área de Trabalho/Alanuvem/Disciplinas/Introprog/Aula_14';
use strict;
use aula14;

## Declaracao de variaveis
my $tamanho;
my $sequencia;
my $revSeq;

## MAIN ##

# criar a sequencia aleatoria
$tamanho = 200;
$sequencia = seqAleatoria($tamanho);

# inverter a sequencia
$revSeq = reverse($sequencia);

# gerar o complemento reverso
$revSeq =~ tr/ATCG/atcg/;

# imprimir (fasta)
print "\>seq\n";
for (my $i = 0; $i < $tamanho; $i+=70) { print substr($revSeq,$i,70), "\n"; }

exit;


## SUBROTINAS ##

## subrotina para gerar sequencias aleatorias de nucleotideos
## argumento: tamanho da sequencia (numero de nucleotideos)
## retorna: string com uma sequencia aleatoria

#sub seqAleatoria {
#    my $seq = "";
#    my $tamanho = shift || 40;                 # default: $tamanho = 40
#    for (my $i = 0; $i < $tamanho; $i++) {
#        my $base = int(rand(4));
#        if ($base == 0) { $seq .= "A"; next; }
#        if ($base == 1) { $seq .= "T"; next; }
#        if ($base == 2) { $seq .= "C"; next; }
#        if ($base == 3) { $seq .= "G"; next; }
#    }
#    return $seq;
#}
