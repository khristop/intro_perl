my @nombres;
while(<>){
    chomp;
    push(@nombres, $_);
}

%lista = map {
    my tempo = "    ".$_."\n";
} 

print $lista;
