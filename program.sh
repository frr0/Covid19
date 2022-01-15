
#!/bin/sh


  ##===================================
  ##somministrazioni-vaccini-latest.pdf
  ##===================================

if [ -f somministrazioni-vaccini-latest.pdf ]; then
rm somministrazioni-vaccini-latest.pdf
fi

if [ -f somministrazioni-vaccini-latest.vsc ]; then
rm somministrazioni-vaccini-latest.csv
fi

wget -q https://raw.githubusercontent.com/italia/covid19-opendata-vaccini/master/dati/somministrazioni-vaccini-latest.csv

pandoc -V geometry:"paperwidth=500mm, paperheight=200mm, top=1.5cm, bottom=1.5cm, left=1.5cm, right=1.5cm" -o somministrazioni-vaccini-latest.pdf somministrazioni-vaccini-latest.csv +RTS -Ksize -RTS

xdg-open somministrazioni-vaccini-latest.pdf


rm somministrazioni-vaccini-latest.csv
rm somministrazioni-vaccini-latest.pdf

  ##===================================
  ##dpc-covid19-ita-province.pdf
  ##===================================

if [ -f dpc-covid19-ita-province.csv ]; then
  rm dpc-covid19-ita-province.csv

fi

if [ -f dpc-covid19-ita-province.pdf ]; then
  rm dpc-covid19-ita-province.pdf
fi

wget -q https://raw.githubusercontent.com/pcm-dpc/COVID-19/master/dati-province/dpc-covid19-ita-province.csv

pandoc -V geometry:"paperwidth=1000mm, paperheight=200mm, top=1.5cm, bottom=1.5cm, left=1.5cm, right=1.5cm" -o dpc-covid19-ita-province.pdf dpc-covid19-ita-province.csv +RTS -Ksize -RTS

xdg-open dpc-covid19-ita-province.pdf


rm dpc-covid19-ita-province.pdf
rm dpc-covid19-ita-province.csv
