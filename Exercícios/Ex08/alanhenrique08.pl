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

if ($restseq !~ m/^[ACTGURYSWKMBDHVN]*$/) {die "A sequência fornecida não é válida. Use letras maiúsculas, sem espaços e caracteres especiais.\n\n"}

# IF STATEMENT PARA INDEX DO $ARGV

if ($#ARGV != 3) {die "Usage: alanhenrique08.pl input.fasta input.qual output.fastq enzyme_sequence"}

# A seguir, uma série de REGEX para substituir possíveis letras para seus respectivos possíveis nucleotídeos (de acordo com a tabela IUPAC)

$restseq =~ s/R/\[AG\]/g;
$restseq =~ s/Y/\[CT\]/g;
$restseq =~ s/S/\[GC\]/g;
$restseq =~ s/W/\[AT\]/g;
$restseq =~ s/K/\[GT\]/g;
$restseq =~ s/M/\[AC\]/g;
$restseq =~ s/B/\[CGT\]/g;
$restseq =~ s/D/\[AGT\]/g;
$restseq =~ s/H/\[ACT\]/g;
$restseq =~ s/V/\[ACG\]/g;
$restseq =~ s/N/\[ACTG\]/g;

## Rodando as três subrotinas em sequência
fastaqual(); #Armazena sequências e qualidades em dois hashes, %seq e %qual
renzsearch(); #Busca pelo sítio de restrição nos elementos de %seq e armazena sua posição inicial em um novo hash, %restseq
fastqmk(); #Gera o arquivo .fastq, adicionando à descrição (linhas 1 e 3, após o nome do gene) a posição inicial dos sítios de restrição

exit;

# SUBROTINA 1 que armazena as sequências e qualidades em dois hashes, %seq e %qual
sub fastaqual {
  my $i = -1;
  my $j = -1;

  while (<FASTASEQ>) { #itera por todas as linhas de FASTASEQ
    if ($_ =~ m/>/) { #se a linha contém >
      if ($i != -1) { #se i é diferente de -1, pulando assim a primeira linha
        $seq{$header} = $full_seq; #o elemento da chave header é a sequencia
        $full_seq = ""; #transforma a sequência em um string vazio

      }
      $i += 1; #adiciona 1 ao i
      $header = $_; #torna o header a linha atual que contém >
      chomp $header;
    }
    unless($_ =~ m/>/) { #a menos que a linha contenha >
      $seq0 = $_; #transforma a variável seq na linha
      chomp $seq0; #remove newline
      $full_seq = $full_seq . $seq0; #concatena full_seq com a nova linha
    }
  }

  $seq{$header} = $full_seq;

  while (<FASTAQUAL>) { #itera por todas as linhas de QUAL
    if ($_ =~ m/>/) { #se a linha contém >
      if ($j != -1) { #se i é diferente de -1, pulando assim a primeira linha
        $qual{$header} = $full_qual; #o elemento da chave header é a sequencia
        $full_qual = ""; #transforma a sequência em um string vazio
      }
      $j += 1; #adiciona 1 ao i
      $header = $_; #torna o header a linha atual que contém >
      chomp $header;
      chop $header;
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

}

# SUBROTINA 2, que busca nas sequências os sítios de restrição da enzima fornecida
## PS: No exercício é pedido o nome das sequências. No entanto, tendo usado o arquivo Chom-tr.fasta, que não inclui o mesmo "name" que aparecem em dmel-gene-r5-45.fasta,
## salvei o cabeçalho como sendo o nome das sequências (não tenho o arquivo de qualidades do dmel). No entanto, seria fácil reverter para trabalhar com cabeçalhos mais
## completos: seria necessário substituir o regex por m/name=(\w{1,})/ e usar $1 como o nome.

sub renzsearch {
  foreach $key (keys %seq) {
    $sequence = $seq{$key};
    if ($sequence =~ m/$restseq/) {
      $restpos{$key} = $-[0];
    }
  }
}

# SUBROTINA 3, que cria o arquivo FASTQ a partir dos dados
## PS: como não estou familiarizados com arquivos do tipo .fastq, fiz uma busca na internet e encontrei que as linhas 1 e 3 são de descrição, sendo que a 1
## leva o nome do gene e a 3 também, mas esta última é opcional. Desse modo, adicionei a posição inicial da sequência ao lado do nome nas linhas 1 e 3 
## para cada gene.

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

  print FASTQ "\@$key_fastq $restpos{$key}\n";
  print FASTQ "$sequence\n";
  print FASTQ "+$key_fastq $restpos{$key}\n";
  print FASTQ "$qual{$key}\n";
}

print STDERR "Arquivo $fastq_output gerado.\n";
}