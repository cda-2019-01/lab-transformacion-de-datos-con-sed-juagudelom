sed 's/\([0-9][0-9]\)\/\([0-9][0-9]\)\/\([0-9][0-9]\)/20\3-\2-\1/' data.csv > salida.0
sed 's/[a-z]/\U&/g' salida.0 > salida.1
sed 's/;;/;\\N;/g' salida.1 > salida.2
sed 's/;N/;\\N/g' salida.2 > salida.3
sed 's/;\\N;\\N;/;\\N;\\N;\\N /' salida.3 > salida.4
sed 's/;\\N;/;\\N;\\N/' salida.4 > salida.5
sed 's/,/./g' salida.5 > salida.6
sed 's/;/,/g' salida.6 > salida.7
sed 's/\//-/g' salida.7 > salida.8
sed 's/\([0-9]\)-\([0-9]\)-\([0-9][0-9]\)/0\1-0\2-\3/g' salida.8 > salida.9
sed 's/\([0-9][0-9]\)-\([0-9][0-9]\)-\([0-9][0-9]\),/\1-\2-20\3,/' salida.9 > salida.10
sed 's/\([0-9][0-9]\)-\([0-9][0-9]\)-\([0-9][0-9][0-9][0-9]\)/\3-\2-\1/g' salida.10 > lab-01-juagudelom.csv
rm salida*

