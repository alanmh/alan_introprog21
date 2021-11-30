#exemplo01
#!/usr/bin/perl/

# $valor como variavel global

$valor = 0;
print "Antes da subrotina, valor \= $valor.\n";

soma(12, 20);

print "Antes da subrotina, valor \= $valor.\n";
exit;

sub soma {
    ($n1, $n2) = @_;
    my $valor = $n1 + $n2;
}
