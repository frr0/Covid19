
#!/bin/sh


  ##===================================
  ##somministrazioni-vaccini-latest.pdf
  ##===================================

#if [ -f somministrazioni-vaccini-latest.pdf ]; then
#rm somministrazioni-vaccini-latest.pdf
#fi

#if [ -f somministrazioni-vaccini-latest.vsc ]; then
#rm somministrazioni-vaccini-latest.csv
#fi

#wget -q https://raw.githubusercontent.com/italia/covid19-opendata-vaccini/master/dati/somministrazioni-vaccini-latest.csv

#pandoc -V geometry:"paperwidth=500mm, paperheight=200mm, top=1.5cm, bottom=1.5cm, left=1.5cm, right=1.5cm" -o somministrazioni-vaccini-latest.pdf somministrazioni-vaccini-latest.csv +RTS -Ksize -RTS

#xdg-open somministrazioni-vaccini-latest.pdf


#rm somministrazioni-vaccini-latest.csv
#rm somministrazioni-vaccini-latest.pdf

  ###===================================
  ###dpc-covid19-ita-province.pdf
  ###===================================

#if [ -f dpc-covid19-ita-province.csv ]; then
  #rm dpc-covid19-ita-province.csv

#fi

#if [ -f dpc-covid19-ita-province.pdf ]; then
  #rm dpc-covid19-ita-province.pdf
#fi

#wget -q https://raw.githubusercontent.com/pcm-dpc/COVID-19/master/dati-province/dpc-covid19-ita-province.csv

#pandoc -V geometry:"paperwidth=1000mm, paperheight=200mm, top=1.5cm, bottom=1.5cm, left=1.5cm, right=1.5cm" -o dpc-covid19-ita-province.pdf dpc-covid19-ita-province.csv +RTS -Ksize -RTS

#xdg-open dpc-covid19-ita-province.pdf


#rm dpc-covid19-ita-province.pdf
#rm dpc-covid19-ita-province.csv

  ##===================================
  ##reports_iss_vaccini.csv
  ##===================================

name=reports_iss_vaccini

f_csv=$name.csv
f_pdf=$name.pdf

if [ -f f_csv ]; then
  rm f_csv
fi

if [ -f f_pdf ]; then
  rm f_pdf
fi

wget -q https://raw.githubusercontent.com/maxdevblock/covid_iss_vaccini_reports/main/reports_iss_vaccini.csv

pandoc -V geometry:"paperwidth=900mm, paperheight=200mm, top=1.5cm, bottom=1.5cm, left=1.5cm, right=1.5cm" -o $f_pdf $f_csv +RTS -Ksize -RTS

xdg-open $f_pdf

rm $f_pdf
rm $f_csv


  ##===================================
  ##dataset.csv
  ##===================================

name=dataset

f_csv=$name.csv
f_pdf=$name.pdf

if [ -f f_csv ]; then
  rm f_csv
fi

if [ -f f_pdf ]; then
  rm f_pdf
fi

wget -q https://raw.githubusercontent.com/maxdevblock/covid_iss_vaccini_reports/main/tools/dataset.csv

pandoc -V geometry:"paperwidth=700mm, paperheight=200mm, top=1.5cm, bottom=1.5cm, left=1.5cm, right=1.5cm" -o $f_pdf $f_csv +RTS -Ksize -RTS

xdg-open $f_pdf

rm $f_pdf
rm $f_csv
