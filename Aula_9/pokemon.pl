# exemplo01 pokemon.pl
#!usr/bin/perl

unless (@ARGV) {
  die "Usage: $0 Pokemon_1 Pokemon_2 Pokemon_3\n";
}

%evolution = ("Bulbasaur",  "Ivysaur",
              "Charmander", "Charmeleon",
              "Squirtle",   "Wartortle",
              "Pikachu",    "Raichu");


print "Qual é o pokémon desejado?\n";

$pokemon = <STDIN>;
chomp$pokemon;

# usando for

$encontrado = 0;

$evo_size = %evolution;

@evo_keys = keys(%evolution);

#for ($i = 0; $i < $evo_size; $i += 1) {
#  if ($evo_keys[$i] eq $pokemon) {
#    print "$evo_keys[$i] > $evolution{$evo_keys[$i]}\n";
#    $encontrado = 1;
#  }
#}

#unless ($encontrado) { #unless = ifnot
#  print "Pokemon \"$pokemon\" não encontrado\n";
#}

# usando while

#while (@evo_keys) {
#  $nome = shift(@evo_keys);
#  if ($nome eq $pokemon) {
#    print "Encontrado! $pokemon \-\> $evolution{$nome}\n";
#  }
#  else {
#    print "Pokemon \"$pokemon\" não encontrado\n";
#  }
#}

# usando foreach

foreach $pokemon(@ARGV) {
  if($evolution{$pokemon}){
    print "$pokemon => $evolution{$pokemon}\n\n";
  }
}

# sem usar loops


exit;
