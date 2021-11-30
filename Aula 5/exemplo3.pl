# exemplo03
#! /usr/bin/perl
# script para entender arrays

# criando o array de nomes
@gene_names = ( "CG7856", "scpr-B", "CG4294", "Sgt", "CG42308" );

# exemplo04
# continuacao do script para entender arrays

# criando o array de IDs
@gene_IDs = ( "FBgn0033056", "FBgn0037888", "FBgn0034742", "FBgn0032640", "FBgn0259204" );

# exemplo05
# continuacao do script para entender arrays

# acessando os elementos individuais do array
print "$gene_IDs[0] = $gene_names[0];\n";
print "$gene_IDs[1] = $gene_names[1];\n";
print "$gene_IDs[2] = $gene_names[2];\n";
print "$gene_IDs[3] = $gene_names[3];\n";
print "$gene_IDs[4] = $gene_names[4];\n";

# exemplo06
# continuacao do script para entender arrays

#adicionando elementos no array
$gene_names[5] = "CG15556";
$gene_IDs[5]   = "FBgn0039821";

print "$gene_IDs[5] \= $gene_names[5]\;\n";

# exemplo07
# adicionando mais elementos no array
$gene_names[7] = "CG9773";
$gene_IDs[7]   = "FBgn0037609";

# exemplo08
# adicionando mais elementos no array
$gene_names[6] = "CG7059";
$gene_IDs[6]   = "FBgn0038957";
print "$gene_IDs[6] = $gene_names[6]\n";
print "$gene_IDs[7] \= $gene_names[7]\;\n";

# exemplo09
# o que faz a funcao push()?
push(@gene_names, "RabX4");
push(@gene_IDs, "FBgn0051118");

print "\nExemplo07\:\n";
print "$gene_IDs[0] \= $gene_names[0]\;\n";
print "$gene_IDs[1] \= $gene_names[1]\;\n";
print "$gene_IDs[2] \= $gene_names[2]\;\n";
print "$gene_IDs[3] \= $gene_names[3]\;\n";
print "$gene_IDs[4] \= $gene_names[4]\;\n";
print "$gene_IDs[5] \= $gene_names[5]\;\n";
print "$gene_IDs[6] \= $gene_names[6]\;\n";
print "$gene_IDs[7] \= $gene_names[7]\;\n";
print "$gene_IDs[8] \= $gene_names[8]\;\n";

# exemplo10
# o que faz a funcao pop()?
pop(@gene_names);
pop(@gene_IDs);

print "\nExemplo10\:\n";
print "$gene_IDs[0] \= $gene_names[0]\;\n";
print "$gene_IDs[1] \= $gene_names[1]\;\n";
print "$gene_IDs[2] \= $gene_names[2]\;\n";
print "$gene_IDs[3] \= $gene_names[3]\;\n";
print "$gene_IDs[4] \= $gene_names[4]\;\n";
print "$gene_IDs[5] \= $gene_names[5]\;\n";
print "$gene_IDs[6] \= $gene_names[6]\;\n";
print "$gene_IDs[7] \= $gene_names[7]\;\n";
print "$gene_IDs[8] \= $gene_names[8]\;\n";

# exemplo11
# o que faz a funcao shift()?
$gene_name01 = shift(@gene_names);
$gene_id01   = shift(@gene_IDs);

print "\nExemplo11\:\n";
print "$gene_id01 \= $gene_name01\;\n";
print "Novo array\:\n";
print "$gene_IDs[0] \= $gene_names[0]\;\n";
print "$gene_IDs[1] \= $gene_names[1]\;\n";
print "$gene_IDs[2] \= $gene_names[2]\;\n";
print "$gene_IDs[3] \= $gene_names[3]\;\n";
print "$gene_IDs[4] \= $gene_names[4]\;\n";
print "$gene_IDs[5] \= $gene_names[5]\;\n";
print "$gene_IDs[6] \= $gene_names[6]\;\n";
print "$gene_IDs[7] \= $gene_names[7]\;\n";
print "$gene_IDs[8] \= $gene_names[8]\;\n";

# exemplo12
# o que faz a funcao unshift()?
unshift(@gene_names, $gene_name01);
unshift(@gene_IDs, $gene_id01);

print "\nExemplo12\:\n";
print "$gene_IDs[0] \= $gene_names[0]\;\n";
print "$gene_IDs[1] \= $gene_names[1]\;\n";
print "$gene_IDs[2] \= $gene_names[2]\;\n";
print "$gene_IDs[3] \= $gene_names[3]\;\n";
print "$gene_IDs[4] \= $gene_names[4]\;\n";
print "$gene_IDs[5] \= $gene_names[5]\;\n";
print "$gene_IDs[6] \= $gene_names[6]\;\n";
print "$gene_IDs[7] \= $gene_names[7]\;\n";
print "$gene_IDs[8] \= $gene_names[8]\;\n\n";

$n = @gene_names;

print "n \= $n!\n";

print "\n" . $#gene_names . "\n";

print join(", ", @gene_names, "\n");

# continuacao do script para entender arrays
# valores sequenciais

@var_10 = (1..10);
@var_20 = (10..20);
@var_abc = (a..z);

print "@var_10\n";
print "@var_20\n";
print "@var_abc\n";

@subset_genes = @gene_names[2..4];
print "\n@subset_genes\n";

@subset_genes = @gene_names[2,4];
print "\n@subset_genes\n";

# exemplo13
# funcao splice() para substituicao
# uso: splice (@array, inicio, tamanho, @lista_substituir)

@nums = (1..20);

print "\nExemplo13\:\n";
print "Antes - @nums\n";

splice(@nums,5 ,5 , 21..25); #splice toma como primeiro argumento um array, como segundo o índice onde inicia, como terceiro o comprimento do splice e como quarto o que entra no lugar

print "Depois - @nums\n";

# exemplo14
# funcao split()
# transformar string em array

# strings
$var_music = "Rain-Drops-On-Roses-And-Whiskers-On-Kittens";
$var_Mando = "This is the way";

# transformar strings em arrays
@music = split('-', $var_music);
@Mando  = split(' ', $var_Mando);

print "$music[5]\n";
print "$Mando[3]\n";

# exemplo15
# funcao join()
# transformar array em string

$string1 = join( ' ', @music );
$string2 = join( '-', @Mando );

print "\nExemplo15\:\n";
print "$string1\n";
print "$string2\n";

# exemplo16
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

print join(", \n", %genes);

exit;
