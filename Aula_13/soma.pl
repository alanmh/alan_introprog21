#exemplo03
#!/usr/bin/perl/

$valor = soma(1,2);
#print "$valor\n";
$resultado = $valor*5;
print "$resultado\n";

exit;

sub soma {
    ($n1, $n2) = @_;
    $res = $n1 + $n2;
    print $res;
    return 1;
}
