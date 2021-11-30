#exemplo01 - placas.pl
#!/usr/bin/perl

# Plano C
# cerca de 14 linhas

$ok = 0; # default

print "Placa\:\n";

$placa = <STDIN>;

chomp $placa;

#$ch7 = chop ( $placa );
#if ( $ch7 =~ m/[0-9]/ ) { $ok++ }

#$ch6 = chop ( $placa );
#if ( $ch6 =~ m/[0-9]/ ) { $ok++ }

#$ch5 = chop ($placa);
#if ($ch5 =~ m/[0-9]/ ) {$ok++}

#$ch4 = chop ($placa);
#if ($ch4 =~ m/[0-9]/ ) {$ok++}

#$ch3 = chop ($placa);
#if ($ch3 =~ m/[A-Z]/ ) {$ok++}

#$ch2 = chop ($placa);
#if ($ch2 =~ m/[A-Z]/ ) {$ok++}

#$ch1 = chop ($placa);
#if ($ch1 =~ m/[A-Z]/ ) {$ok++}

if ($placa =~ m/[A-Z]{3}[0-9]{4}/) {
  print "Placa\n"
}

# outros digitos
# outras letras

if ( $ok == 7 ) { print "É uma placa de carro!\n" }

exit;
