# exemplo05
#! /usr/bin/perl
# script para testar estruturas de controle

#$seq = "ATGCGCGTAGCTCGTAGCTAGCTAGCTAGCT";
#$avg_qual = 40;

#if (0) {

#   $seq_length = length($seq);

#}

#print "O tamanho da sequencia eh $seq_length.\n";

# exemplo06
# comando die()

#$nota_do_aluno = 4.5;
#$nota_de_corte = 5.0;

#if ($nota_do_aluno < $nota_de_corte) {

#   die "Aluno reprovado\n";

#}

#print "Imprimindo qualquer coisa depois de die()";

# exemplo07
# comando die()

#@array_vazio = ();

#$temp = pop(@array_vazio);

#print "$temp";

#if (!$temp) {

#   die "pop() nao deve ser usado em um array vazio\n";

#}

# exemplo08
# comparando dois hashes

%coord_start = ("Gene1" => "100000",
                "Gene2" => "550000");
%coord_end   = ("Gene2" => "556000");

$gene_alvo = "Gene1";

if ($coord_start{$gene_alvo}) {
    print "teste do primeiro if";
   if ($coord_end{$gene_alvo}) {
      print "As coordenadas do $gene_alvo sao $coord_start{$gene_alvo}..$coord_end{$gene_alvo}. \n";
   }
}

exit;
