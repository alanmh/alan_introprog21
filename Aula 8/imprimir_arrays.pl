# exempl007
# formas de imprimir arrays

@seqs = ("ATGGCGTAGATCG","TAAGCCCCGGTATATTTGACCCT", "GATAGAG");

# for
$seqs = @seqs;

print "\nExemplo 07 (for):\n";

for ( $i = 0; $i < $seqs; $i++ ) {
    print "$seqs[$i]\n" ;
}

# foreach

print "\nExemplo 07 (foreach):\n";

foreach $seq (@seqs) {
    print "$seq\n" ;
}

# while
$n_seqs = @seqs;

$i = 0;

print "\nExemplo 07 (while):\n";

while ( $i < $n_seqs ) {
    print "$seqs[$i]\n";
    ++$i;
}
