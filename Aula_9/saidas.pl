#exemplo04

#!usr/bin/perl

$output = $ARGV[0];

open(OUTPUT, ">$output") || die "Não foi possível abrir";

#unless (open(OUTPUT, ">$output")) {
#  print STDERR "Não foi possível abrir $output\n Verifique se o arquivo existe\n";
#}

print OUTPUT "Escrevendo no arquivo usando OUTPUT\n";

print "Onde estou escrevendo sem filehandle?\n";
print STDERR "Onde estou escrevendo com STDERR?\n";
print STDOUT "Onde estou escrevendo com STDOUT?\n";

close OUTPUT;
exit;
