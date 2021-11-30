#exemplo02
#!/usr/bin/perl/

seqAleatoria(1000);
exit;

sub seqAleatoria {
    $tamanho = shift || 40; #shift usa como argumento o @_, isso acontece dentro de colchetes
    for ($i = 0; $i < $tamanho; $i++) {
        unless ($i%51) { print "\n" };
        $base = int(rand(4));
        if ($base == 0) { print "A"; next; }
        if ($base == 1) { print "T"; next; }
        if ($base == 2) { print "C"; next; }
        if ($base == 3) { print "G"; next; }
    }
    print "\n";
}
