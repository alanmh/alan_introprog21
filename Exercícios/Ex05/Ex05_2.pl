#! /usr/bin/perl

#Ex 05 - 2

use List::Util 'shuffle'; #encontrei essa função shuffle na documentação do Perl, facilitou o trabalho

@baralho = shuffle("A_copas", "2_copas", "3_copas", "4_copas", "5_copas",
"6_copas", "7_copas", "8_copas", "9_copas", "10_copas",
"J_copas", "Q_copas", "K_copas",
"A_ouros", "2_ouros", "3_ouros", "4_ouros", "5_ouros",
"6_ouros", "7_ouros", "8_ouros", "9_ouros", "10_ouros",
"J_ouros", "Q_ouros", "K_ouros",
"A_espadas", "2_espadas", "3_espadas", "4_espadas", "5_espadas",
"6_espadas", "7_espadas", "8_espadas", "9_espadas", "10_espadas",
"J_espadas", "Q_espadas", "K_espadas",
"A_paus", "2_paus", "3_paus", "4_paus", "5_paus",
"6_paus", "7_paus", "8_paus", "9_paus", "10_paus",
"J_paus", "Q_paus", "K_paus", );

@Huguinho = ();
@Zezinho = ();
@Luizinho = ();

for ($i=0; $i<=4; $i += 1) {
  push(@Huguinho, shift(@baralho));
  push(@Zezinho, shift(@baralho));
  push(@Luizinho, shift(@baralho));
}

print "Cartas na mão: \n\nHuguinho: @Huguinho\nZezinho = @Zezinho\nLuizinho = @Luizinho\n";

exit;
