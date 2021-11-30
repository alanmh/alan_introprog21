# exemplo01
# foreach() para imprimir conteudo de arrays

#print "\nExemplo 01:\n";

#@seqs=("ATGGCGTAGATCG", "TAAGCCCCGGTATATTTGACCCCGAT", "GATAGAG");

#$i = 1;

#foreach $seq (@seqs) {

#    print ">Gene $i \n$seq\n\n" ;

#$i += 1;
#}

# exemplo03
# foreach() para imprimir conteudo de hashes

%seqs = ("Gene25", "ATGGCGTAGATCG",
         "Gene49", "TAAGCCCCGGTATATTTGACCCCGAT",
         "Gene03", "GATAGAG");

print "\nExemplo 03:\n";

@keys = keys(%seqs);

foreach $_(sort(@keys)) {

  print ">$_ \n$seqs{$_}\n\n";
  
}


exit;
