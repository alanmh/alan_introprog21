#Exercício 07 -

#!usr/bin/perl

$input = $ARGV[0];
$output = $ARGV[1];

open(INPUT, "<$input") || die "Não foi possível encontrar o arquivo $input\n";
open(OUTPUT, ">$output") || die "Há um problema com o local do arquivo $output\n";

if ($#ARGV != 1) {
  die "Usage: fastaname.pl input output";
}

%seq = ();
$i = -1;

while (<INPUT>) {
  if ($_ =~ m/name=(\w{1,})/) {
    if ($i != -1) {
      $full_seq = reverse($full_seq);
      $full_seq =~ tr/ACTG/TGAC/;
      $full_seq = join ("\n",  ( $full_seq =~ /.{1,70}/gs ));
      $seq{$name} = $full_seq;
      $full_seq = "";
    }
    $i += 1;
    $name = $1;
  }
  else {
    chomp $_;
    $full_seq = $full_seq.$_;
  }
}

$seq{$name} = $full_seq;

foreach $key (keys %seq) {
  $sequence = $seq{$key};
  print OUTPUT ">$key\n$sequence";
  print OUTPUT "\n";
}

exit;
#Pegar o name do cabeçalho de cada gene no arquivo dmel e dar saída num arquivo com o nome no cabeçalho e a sequência na newline
