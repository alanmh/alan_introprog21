#! /usr/bin/perl

#Ex 05 - 1

%alunos = ("Passolargo" => "9302931",
"Joãozinho" => "9601293",
"Maria" => "8200437",
"Irina" => "8293058",
"Frodo" => "977203",
"Sam" => "8810285",
"Witch King of Angmar" => "666");

$aluno = "Joãozinho";

if (exists($alunos{$aluno})) {
  print "$alunos{$aluno}\n"

}
exit;
