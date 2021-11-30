#exemplo04
#!/usr/bin/perl/

# corpo do script

# gerar sequencia aleatoria com a subrotina seqAleatoria
$tamanho = 200;
$sequencia = randseq($tamanho);

# inverter a sequencia
$revSeq = reverse($sequencia);

# gerar o complemento reverso
$revSeq =~ tr/ATCG/atcg/;

# imprimir (fasta)
print "\>seq\n";
for ($i = 0; $i < $tamanho; $i+=70) {
    print substr($revSeq,$i,70), "\n";
}

exit;

sub randseq {
    $seq = "";
    for ($i = 0; $i < $_[0]; $i++) {
        $base = int(rand(4));
        if ($base == 0) {
            $seq = $seq."A";
            next;
        }
        if ($base == 1) {
            $seq = $seq."T";
            next;
        }
        if ($base == 2) {
            $seq = $seq."C";
            next;
        }
        if ($base == 3) {
            $seq = $seq."G";
            next;
        }
    }
    return $seq;
}
