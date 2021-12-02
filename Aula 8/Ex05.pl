# exemplo 05
# foreach() para encontrar um valor especifico em hashes

print "\nExemplo 05:\n";

%seqs = ("Gene25", "ATGGCGTAGATCG",
         "Gene49", "TAAGCCCCGGTATATTTGACCCCGAT",
         "Gene03", "GATAGAG",
         "Gene06", "GATAGAG");

$seq_alvo = "GATAGAG"; # esta presente?

foreach $gene (keys(%seqs)) {

    if ($seqs{$gene} eq $seq_alvo) {
        print "Sequencia encontrada: $gene.\n\n";
    }
}
