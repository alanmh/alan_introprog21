#exemplo02 - telefone.pl
#!/usr/bin/perl

# formato (11)3091-8759

print "Telefone\:\n";
$tel = <STDIN>;

$padrao = '^\(?(\d{2})\)?(\d{4,5})\-?(\d{4})$';

if ( $tel =~ /$padrao/) {
   print "Eh um telefone!\n";
   print "A área é ($1) e o telefone é $2-$3\n";
}

$tel =~ s/\(//;
$tel =~ s/\)//;
print "$tel";

exit;
