# exemplo03
# nota <  5,   reprovado
# nota <= 7,   C
# nota <= 8.5, B
# nota >  8.5, A
# varias condicoes diferentes

print "\nExemplo 10:\n";

$nota_de_corte = 5;
$nota_do_aluno = 10;

if ($nota_do_aluno < $nota_de_corte) {
   print "Aluno reprovado!\n";
 }
 elsif ($nota_do_aluno <= 7) {
   print "C, regular!\n";
 }
 elsif ($nota_do_aluno <= 8.5) {
   print "B, bom!\n";
}
else {
   print "A, excelente!\n";
}
