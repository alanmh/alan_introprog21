#! /usr/bin/perl

#Ex 05 - 3

@terraqueos = ("Arthur Dent",
"Tricia McMillan",
"Ford Prefect");

@extraterrestres = ("Slartibartfast",
"Zaphod Beeblebrox",
"Marvin",
"Ford Prefect");

@duplicates = ();

foreach $_ (@terraqueos) {
  if ($_ ~~ @extraterrestres) {
    push(@duplicates, $_)
  }
}

$dup_size = @duplicates;

if ($dup_size != 0) {
  print "@duplicates\n";
}
else {
  print "Não há nenhuma palavra duplicada\n";
}

exit;
