#! /usr/bin/perl

#Ex. 3

@mercado = ("carne", "pão", "queijo", "leite", "frango", "fermento", "farinha de trigo", "canela");

print "Há ovos no mercado? Responda com 's' para sim ou 'n' para não.\n";

chomp(my $yn = <STDIN>);
if ($yn ne "s" and $yn ne "n") {
  die ("o texto inserido não é válido\n")
}
if ($yn eq "s") {
  push(@mercado, "ovos")
}

if ("ovos" ~~ @mercado) {
  print "A programadora deverá comprar um litro de leite e 6 ovos.\n";
}
else {
  print "A programadora deverá comprar apenas um litro de leite. \n";
}

exit;
