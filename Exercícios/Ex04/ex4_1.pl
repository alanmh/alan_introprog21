#! /usr/bin/perl

#Ex. 1

#O primeiro passo é criar um hash associando cada códon ao aminoácido correspondente. O códon de input será uma sequência de DNA da fita molde:

%codgen = ("AAA" => "Phe",
"AAG" => "Phe",
"AAT" => "Leu",
"AAC" => "Leu",
"AGA" => "Ser",
"AGG" => "Ser",
"AGT" => "Ser",
"AGC" => "Ser",
"ATA" => "Tyr",
"ATG" => "Tyr",
"ATT" => "STOP",
"ATC" => "STOP",
"ACA" => "Cys",
"ACG" => "Cys",
"ACT" => "STOP",
"ACC" => "Trp",
"GAA" => "Leu",
"GAG" => "Leu",
"GAT" => "Leu",
"GAC" => "leu",
"GGA" => "Pro",
"GGG" => "Pro",
"GGT" => "Pro",
"GGC" => "Pro",
"GTA" => "His",
"GTG" => "His",
"GTT" => "Gln",
"GTC" => "Gln",
"GCA" => "Arg",
"GCG" => "Arg",
"GCT" => "Arg",
"GCC" => "Arg",
"TAA" => "Ile",
"TAG" => "Ile",
"TAT" => "Ile",
"TAC" => "Met",
"TGA" => "Thr",
"TGG" => "Thr",
"TGT" => "Thr",
"TGC" => "Thr",
"TTA" => "Asn",
"TTG" => "Asn",
"TTT" => "Lys",
"TTC" => "Lys",
"TCA" => "Ser",
"TCG" => "Ser",
"TCT" => "Arg",
"TCC" => "Arg",
"CAA" => "Val",
"CAG" => "Val",
"CAT" => "Val",
"CAC" => "Val",
"CGA" => "Ala",
"CGG" => "Ala",
"CGT" => "Ala",
"CGC" => "Ala",
"CTA" => "Asp",
"CTG" => "Asp",
"CTT" => "Glu",
"CTC" => "Glu",
"CCA" => "Gly",
"CCG" => "Gly",
"CCT" => "Gly",
"CCC" => "Gly");

#Em seguida, salvo um input do usuário que vai conter a sequência do códon:

print "Insira uma sequência de um códon: \n-";
my $codon = <STDIN>;
my $codon = uc $codon;
chomp $codon;

if(exists($codgen{$codon}))
{
  print "O aminoácido referente ao códon $codon é $codgen{$codon}\n";
}
else {
  print "O texto não corresponde a um códon válido.\n";
}
exit;
