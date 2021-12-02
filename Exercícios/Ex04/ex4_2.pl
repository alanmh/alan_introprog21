#! /usr/bin/perl

#Ex. 2

#O primeiro passo é criar um hash contendo a cobertura para cada cromossomo:

%cob = ("chr1" => "19.92",
"chr2" => "18.56",
"chr3" => "16.98",
"chr4" => "20.94",
"chr5" => "22.40",
"chr6" => "26.67",
"chr7" => "24.33",
"chr8" => "17.11",
"chr9" => "17.52",
"chr10" => "20.77",
"chr11" => "18.75",
"chr12" => "21.48",
"chr13" => "16.98",
"chr14" => "15.32",
"chr15" => "14.57");

#Em seguida, criarei um hash contendo o número de genes por cromossomo:

%geneamount = ("chr1" => "202",
"chr2" => "938",
"chr3" => "564",
"chr4" => "1227",
"chr5" => "901",
"chr6" => "763",
"chr7" => "736",
"chr8" => "1306",
"chr9" => "1034",
"chr10" => "503",
"chr11" => "635",
"chr12" => "576",
"chr13" => "1432",
"chr14" => "806",
"chr15" => "356");

print "Insira o número do cromossomo de interesse:\n";
chomp(my $chr = <STDIN>);
my $chr = "chr$chr";

if(exists($cob{$chr})) {
  if($cob{$chr} >= 20) {
    print "O cromossomo em questão possui $geneamount{$chr} genes mapeados \n";
  }
  else {
    die("O cromossomo não tem cobertura suficiente para a análise pretendida\n");
  }
}
else{
  die("O texto digitado não corresponde ao número de um cromossomo válido\n");
}

exit;
