#exemplo03
#!/usr/bin/perl/

## script para testar subrotinas

use strict;

# declaracao e inicializacao de variaveis
my $sequencia;
my @nome = ("EcoRI", "HaeII", "HindIII");
my @sitio = ("GAATTC", "GGCC", "AAGCTT");

## MAIN ##

$sequencia = restricao($#nome, @nome, $#sitio, @sitio);
exit;

## SUBROTINAS ##

sub restricao {
    my @nome; #@nome = undef
    my @sitio; #@sitio = undef

    my $lastindex = shift; #lastindex é o $#nome
    for (my $i = 0; $i <= $lastindex; $i++) {#Esse loop itera até que se esgotem os strings do @nome
        $nome[$i] = shift;
    }
    $lastindex = shift;
    for (my $i = 0; $i <= $lastindex; $i++) {
        $sitio[$i] = shift;
    }
    # bloco de comandos para usar os arrays
    print "@nome\n";
    print "@sitio\n";
    print "$lastindex";
}
