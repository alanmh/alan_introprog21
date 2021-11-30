#exemplo01 - hello.pl

#! /usr/bin/perl

print "Insira seu nome:\n";
my $name = <STDIN>;
chomp($name);  #Como meu print estava mostrando nome e sobrenome em linhas diferentes, encontrei na internet este comando para remover a nova linha adicionada no STDIN
print"Insira seu sobrenome:\n";
my $surname = <STDIN>;
chomp$surname;

print "Hello, $name $surname!\n";
print "$name $name";

exit;
