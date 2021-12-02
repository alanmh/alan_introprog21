# exemplo04
# testando operacoes matematicas
# comparacao 1
my $c = 5;
my $e = 5;
my $d = 20;

$temp = $c == $e;
print "A comparacao 1 eh $temp.\n";

# comparacao 2

$temp = $c == $d;
print "A comparacao 2 eh $temp.\n";

# comparacao 3

$temp = $c <= $d;
print "A comparacao 3 eh $temp.\n";

# comparacao 4

$temp = $c <=> $d;
print "A comparacao 4 eh $temp.\n"; ## -1, 0, 1

# comparacao 5 - contexto de "string"

$temp = $c eq $d;
print "A comparacao 5 eh $temp.\n";

# comparacao 6 - contexto de "string"

$temp = $c gt $d;
print "A comparacao 6 eh $temp.\n";

# comparacao 7 - contexto de "string"

$temp = $c cmp $d;
print "A comparacao 7 eh $temp.\n"; ## -1, 0, 1

# comparacao 8 - contexto de "string"
# ordem alfabética

$geneA = "FBgn2";
$geneB = "FBgn100";

$temp = $geneA cmp $geneB;
print "A comparacao 8 eh $temp.\n";

# comparacao 9 - contexto de "string"
# ordem alfabética

$geneA = "FBgn002";
$geneB = "FBgn100";

$temp = $geneA cmp $geneB;
print "A comparacao 9 eh $temp.\n";
