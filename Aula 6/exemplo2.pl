# exemplo02
#! /usr/bin/perl
# script para testar a função defined

# criando variáveis

$scalar1 = 1;
$scalar2 = 0;
$scalar3 = "";
$scalar4;

$temp = defined($scalar1);
print "Resultado do defined = $temp\n\n";

$temp = undef($scalar1); #undef torna a variável falsa
print "Resultado do defined = $temp\n";

exit;
