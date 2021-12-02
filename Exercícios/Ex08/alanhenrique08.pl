# Exercício 08
# Alan Moreira Henrique

#!usr/bin/perl

$fasta_input = $ARGV[0];
$qual_input = $ARGV[1];
$fastq_output = $ARGV[2];
$restseq = $ARGV[3];

# Declaração de variáveis
my %seq;
my %qual;
my %restpos;

open(FASTASEQ, "<$fasta_input") || die "Não foi possível encontrar o arquivo $fasta_input\n\n";
open(FASTAQUAL, "<$qual_input") || die "Não foi possível encontrar o arquivo $qual_input\n\n";
open(FASTQ, ">$fastq_output") || die "Há um problema com o local do arquivo $fastq_output\n\n";

# Checar se a sequência da enzima de restrição é válida

if ($restseq !~ m/[ACTGURYSWKMBDHVN]{1,}/) {
  die "A sequência fornecida não é válida. Use letras maiúsculas, sem espaços e caracteres especiais.\n\n";
}

# IF STATEMENT PARA INDEX DO $ARGV

if ($#ARGV != 3) {
  die "Usage: alanhenrique08.pl input.fasta input.qual output.fastq enzyme_sequence";
}


# A seguir, uma série de REGEX para substituir possíveis letras para seus possíveis nucleotídeos

$restseq =~ s/R/\[AG\]/;
$restseq =~ s/Y/\[CT\]/;
$restseq =~ s/S/\[GC\]/;
$restseq =~ s/W/\[AT\]/;
$restseq =~ s/K/\[GT\]/;
$restseq =~ s/M/\[AC\]/;
$restseq =~ s/B/\[CGT\]/;
$restseq =~ s/D/\[AGT\]/;
$restseq =~ s/H/\[ACT\]/;
$restseq =~ s/V/\[ACG\]/;
$restseq =~ s/N/\[ACTG\]/;

fastaqual();
#print join("\n", %seq);

#renzsearch();
#fastqmk();


exit;

# SUBROTINA 1 que armazena as sequências e qualidades em dois hashes, %seq e %qual
sub fastaqual {
  my $i = -1;
  my $j = -1;

  while (<FASTASEQ>) { #itera por todas as linhas de FASTASEQ
    if ($_ =~ m/name=(\w{1,})/) { #se a linha contém >
      print "$i\n";
      if ($i != -1) { #se i é diferente de -1, pulando assim a primeira linha
        $seq{$header} = $full_seq; #o elemento da chave header é a sequencia
        $full_seq = ""; #transforma a sequência em um string vazio

      }
      $i += 1; #adiciona 1 ao i
      $header = $1; #torna o header a linha atual que contém >
    }
    unless($_ =~ m/>/) { #a menos que a linha contenha >
      $seq0 = $_; #transforma a variável seq na linha
      chomp $seq0; #remove newline
      $full_seq = $full_seq . $seq0; #concatena full_seq com a nova linha
    }
  }

  $seq{$header} = $full_seq;

  while (<QUAL>) { #itera por todas as linhas de QUAL
    if ($_ =~ m/name=(\w{1,})/) { #se a linha contém >
      if ($j != -1) { #se i é diferente de -1, pulando assim a primeira linha
        $qual{$header} = $full_qual; #o elemento da chave header é a sequencia
        $full_qual = ""; #transforma a sequência em um string vazio
      }
      $j += 1; #adiciona 1 ao i
      $header = $1; #torna o header a linha atual que contém >
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
  $qual{$header} = $$full_qual;

}

# SUBROTINA 2, que busca nas sequências os sítios de restrição da enzima fornecida
# O código ficaria bem melhor se, ao invés de olhar novamente no FASTASEQ, eu olhasse no hash %seq

sub renzsearch {
  my $i = -1;
  while (<FASTASEQ>) {
    if ($_ =~ m/name=(\w{1,})/) { # if para pegar o cabeçalho do gene
      if ($_ != -1) {
        if ($full_seq =~ m/$restseq/) {
          $restpos{$name} = $-[0];
        }
      }
      else {
        $i += 1;
      }
    $name = $1;
    }
    unless ($_ =~ m/^>/) {
      $seq0 = $_;
      chomp $seq0;
      $full_seq = $full_seq.$seq0;
    }

  }
  if ($full_seq =~ m/$restseq/) {
    $restpos{$name} = $-[0];
  }
}

# SUBROTINA 3, que cria o arquivo FASTQ a partir dos dados

sub fastqmk {
  # Dicionário das qualidades para ASCII
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

foreach $key (keys %restpos) {
  $sequence = $seq{$key};
  $key_fastq = $key;
  $key_qual = $qual{$key} ." ";
  $key_fastq =~ s/>//;

  print FASTQ "\@$key_fastq $\n"; ##ADICIONAR A DESCRIÇÃO PROPOSTA
  print FASTQ "$sequence\n";
  print FASTQ "+$key_fastq\n";
  print FASTQ "$qual{$key}\n";
}

print STDERR "Arquivo $fastq_output gerado.\n";
}