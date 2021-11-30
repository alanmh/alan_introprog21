sub seqAleatoria {
    my $seq = "";
    my $tamanho = shift || 40;                 # default: $tamanho = 40
    for (my $i = 0; $i < $tamanho; $i++) {
        my $base = int(rand(4));
        if ($base == 0) { $seq .= "A"; next; }
        if ($base == 1) { $seq .= "T"; next; }
        if ($base == 2) { $seq .= "C"; next; }
        if ($base == 3) { $seq .= "G"; next; }
    }
    return $seq;
}
1;
