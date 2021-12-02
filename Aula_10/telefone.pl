#exemplo02 - telefone.pl
#!/usr/bin/perl

# formato (11)3091-8759

print "Telefone\:\n";
$tel = <STDIN>;

if ( $tel =~ m/\(?\d{2}\)?\d{4,5}\-?\d{4}/) { 
   print "Eh um telefone!\n";
}

exit;
