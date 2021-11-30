#exemplo01
# Descobrir a funcao da subrotina abaixo
# A funcao rand(EXPR) retorna um numero real entre 0 e o valor de EXPR
# A funcao int(EXPR) retorna a parte inteira do valor real EXPR (nao arredonda)

sub randseq {
    $seq = "";
    for ($i = 0; $i < $_[0]; $i++) {
        $base = int(rand(4));
        if ($base == 0) {
            $seq = $seq."A";
            next;
        }
        if ($base == 1) {
            $seq = $seq."T";
            next;
        }
        if ($base == 2) {
            $seq = $seq."C";
            next;
        }
        if ($base == 3) {
            $seq = $seq."G";
            next;
        }
    }
    return $seq;
}

print reverse(randseq(10))."\n";

exit;
