#Ex.06

#!usr/bin/perl

$fasta_input = $ARGV[0];
$qual_input = $ARGV[1];
$fastq_output = $ARGV[2];

open(FASTASEQ, "<$fasta_input") || die "Não foi possível abrir o arquivo $fasta_input\n";
open(QUAL, "<$qual_input") || die "Não foi possível abrir o arquivo $qual_input\n";
open(FASTQ, ">$fastq_output") || die "Há um problema com o local do arquivo $fastq_output\n";

if ($#ARGV != 2) {
  die "Usage: fastaqual.pl arquivo_FASTA_input arquivo_FASTAQUAL_input arquivo_FASTQ_output";
}

%seq = ();
%qual = ();
$i = -1;

# ESSA PARTE DO CÓDIGO ESTÁ FUNCIONANDO BEM, PRA CRIAR A HASH %SEQ
while (<FASTASEQ>) { #itera por todas as linhas de FASTASEQ
  if ($_ =~ m/>/) { #se a linha contém >
    #print "$i\n";
    if ($i != -1) { #se i é diferente de -1, pulando assim a primeira linha
      $seq{$header} = $full_seq; #o elemento da chave header é a sequencia
      $full_seq = ""; #transforma a sequência em um string vazio

    }
    $i += 1; #adiciona 1 ao i
    chomp $_; #remove newline do header
    $header = $_; #torna o header a linha atual que contém >
  }
  unless($_ =~ m/>/) { #a menos que a linha contenha >
    $seq0 = $_; #transforma a variável seq na linha
    chomp $seq0; #remove newline
    $full_seq = $full_seq . $seq0; #concatena full_seq com a nova linha
#    print $full_seq;
  }
}

$seq{$header} = $full_seq;

#Cálculo do tamanho médio das sequências:

$n = 0;

foreach $key (keys %seq) {
  $value = $seq{$key};
  $n += 1;
  $total_size += length $value;
}

$med_size = $total_size / $n;

print "O tamanho médio das sequências do arquivo é: $med_size\n";

$j = -1;

while (<QUAL>) { #itera por todas as linhas de FASTASEQ
  if ($_ =~ m/>/) { #se a linha contém >
    if ($j != -1) { #se i é diferente de -1, pulando assim a primeira linha
      $qual{$header} = $full_qual; #o elemento da chave header é a sequencia
      $full_qual = ""; #transforma a sequência em um string vazio
    }
    $j += 1; #adiciona 1 ao i
    chomp $_; #remove newline do header
    $header = $_; #torna o header a linha atual que contém >
    chop ($header);
  }
  unless($_ =~ m/>/) { #a menos que a linha contenha >
    $qual0 = $_; #transforma a variável seq na linha
    chomp $qual0; #remove newline
    $qual0 = $qual0 . " ";
    $full_qual = $full_qual . $qual0; #concatena full_seq com a nova linha
#    print $full_seq;
  }
}

$qual{$header} = $full_qual;

#Agora precisa converter full_qual em ascii
#Criando a hash de conversão:

%map = ("0 " => "\!",
"1 " => "\"",
"2 " => "\#",
"3 " => "\$",
"4 " => "\%",
"5 " => "\&",
"6 " => "\'",
"7 " => "\(",
"8 " => "\)",
"9 " => "\*",
"10 " => "\+",
"11 " => "\,",
"12 " => "\-",
"13 " => "\.",
"14 " => "\/",
"15 " => "0",
"16 " => "1",
"17 " => "2",
"18 " => "3",
"19 " => "4",
"20 " => "5",
"21 " => "6",
"22 " => "7",
"23 " => "8",
"24 " => "9",
"25 " => "\:",
"26 " => "\;",
"27 " => "\<",
"28 " => "\=",
"29 " => "\>",
"30 " => "\?",
"31 " => "\@",
"32 " => "A",
"33 " => "B",
"34 " => "C",
"35 " => "D",
"36 " => "E",
"37 " => "F",
"38 " => "G",
"39 " => "H",
"40 " => "I",);

my $alt = join "|", map quotemeta, keys %map;
my $re = qr/($alt)/;

foreach $key (keys %qual) {
  $value = $qual{$key};
  $qual{$key} =~ s/$re/$map{$1}/g;
}

foreach $key (keys %seq) {
  $sequence = $seq{$key};
  $key_fastq = $key;
  $key_qual = $key ." ";
  $key_fastq =~ s/>//;
  print FASTQ "\@$key_fastq\n";
  print FASTQ "$sequence\n";
  print FASTQ "+$key_fastq\n";
  print FASTQ "$qual{$key}\n"
}

print STDERR "Arquivo $fastq_output gerado.\n";

exit;
