#exemplo01 - hello.pl

#! /usr/bin/perl

# Meu primeiro script
print "Hello world!\n";

# exemplo02
# Imprimir o conteudo da variavel como parte de uma sentença maior

print "Eu não suporto mais esse exemplo do $greetings\n";

# exemplo03

#! /usr/bin/perl
# script para testar interpolacao

# declarando minha variavel constante
my $greetings = "Hello world!";

# imprimindo
print "$greetings, mais uma vez!\n";

# exemplo04

#! /usr/bin/perl
# script para testar interpolacao

# declarando minha variavel constante
my $greetings = "Hello world!";

# imprimindo
print 'O nome da nossa variavel eh $greetings';
print " e o conteudo dela eh $greetings.\n";
# exemplo05
print "Ah, se eu ganhasse R\$1,00 a cada vez que \"$greetings\" fosse usado...\n";

# exemplo06
#! /usr/bin/perl
# script para criar uma tabela

# titulo e header
print "Notas da disciplina de Introducao a Programacao\n\n";
print "No USP\tNome\tNota\n";

# imprimindo
print "0001\tMaricotinha\t9,8\n";
print "0002\tJoazinho\t2,0\n";
print "0003\tJujubinha\t9,0\n";
print "0004\tJuquinha\t3,5\n";
print "0005\tMariazinha\t9,5\n";
print "0006\tPedrinho\t2,8\n";
# exemplo07
# continuacao do script para criar uma tabela

# alunas aprovadas
$aluna01 = "Maricotinha";
$aluna02 = "Jujubinha";
$aluna03 = "Mariazinha";

print "\nParabens as alunas $aluna01, $aluna02 e $aluna03!\n\n";

# exemplo08
#! /usr/bin/perl

# Perguntar o nome do usuário
print "Qual seu nome?\n";

# Entrada do usuário
my $nome = <STDIN>;

# Cumprimentar o usuário
print "Boa noite, $nome!\n";

# exemplo09
#! /usr/bin/perl

# atribuindo valores as variaveis
$y = 1;       # inteiro positivo
$z = -5;      # inteiro negativo
$x = 3.14;    # real em ponto flutuante
$w = 2.75e-6; # real em notação científica
$t = 0377;    # octal
$u = 0xffff;  # hexadecimal

$string1 = "Oi, eu sou uma string!";    # string
$string2 = 'Oi, eu tb sou uma string';  # string
$string3 = "ATCGATCGATCGATCGATTGGATC";  # string

print "\$y \= $y\n";
print "\$z \= $z\n";
print "\$x \= $x\n";
print "\$w \= $w\n";
print "\$t \= $t\n";
print "\$u \= $u\n\n";

print "$string1\n$string2\n$string3\n\n";
print "Boa noite, $nome!\n";
exit;
