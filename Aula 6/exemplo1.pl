# exemplo01
#! /usr/bin/perl
# script para entender hashes

# criando o hash de genes
%genes = ("FBgn0033056", "CG7856",
          "FBgn0037888", "scpr-B",
          "FBgn0034742", "CG424",
          "FBgn0032640", "Sgt",
          "FBgn0259204", "CG42308",
          "FBgn0039821", "CG15556",
          "FBgn0038957", "CG7059",
          "FBgn0037609", "CG9773");

# acessando elementos individuais do hash
$gene01 = $genes{FBgn0033056};
$gene02 = $genes{FBgn0037888};

print "$gene01 e $gene02\n";

$genes{"FBgn0051118"} = "RabX4";

# recuperar os IDs
@gene_IDs = keys(%genes);

print "@gene_IDs\n";

# recuperar os valores
@gene_values = values(%genes);

print "@gene_values\n";

# recuperar os IDs em ordem alfabética
@gene_IDs = sort(keys(%genes));

print "@gene_IDs\n";

# o que faz a funcao reverse()
@gene_values_rev = reverse(@gene_values);

print "@gene_values_rev\n";

exit;
