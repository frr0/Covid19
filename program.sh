
#!/bin/sh

  #===================================
  #somministrazioni-vaccini-latest
  #===================================

name=somministrazioni-vaccini-latest

f_csv=$name.csv
f_pdf=$name.pdf

if [ -f f_csv ]; then
  rm f_csv
fi

if [ -f f_pdf ]; then
  rm f_pdf
fi

wget -q https://raw.githubusercontent.com/italia/covid19-opendata-vaccini/master/dati/somministrazioni-vaccini-latest.csv

pandoc -V geometry:"paperwidth=500mm, paperheight=200mm, top=1.5cm, bottom=1.5cm, left=1.5cm, right=1.5cm" -o $f_pdf $f_csv +RTS -Ksize -RTS

xdg-open $f_pdf

rm $f_pdf
rm $f_csv

  #===================================
  #dpc-covid19-ita-province
  #===================================

name=dpc-covid19-ita-province

f_csv=$name.csv
f_pdf=$name.pdf

if [ -f f_csv ]; then
  rm f_csv
fi

if [ -f f_pdf ]; then
  rm f_pdf
fi

wget -q https://raw.githubusercontent.com/pcm-dpc/COVID-19/master/dati-province/dpc-covid19-ita-province.csv

pandoc -V geometry:"paperwidth=1100mm, paperheight=200mm, top=1.5cm, bottom=1.5cm, left=1.5cm, right=1.5cm" -o $f_pdf $f_csv +RTS -Ksize -RTS

xdg-open $f_pdf

rm $f_pdf
rm $f_csv

  #===================================
  #reports_iss_vaccini
  #===================================

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

  #===================================
  #dataset
  #===================================

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

  #========================================
  #Rapporto_sorveglianza_vaccini_COVID-19_9
  #========================================

  # pdf aifa, non ho trovato un repository github
  # modificare il numero ogni volta

name=Rapporto_sorveglianza_vaccini_COVID-19_9

f_pdf=$name.pdf

if [ -f f_pdf ]; then
  rm f_pdf
fi

wget -q https://www.aifa.gov.it/documents/20142/1315190/Rapporto_sorveglianza_vaccini_COVID-19_9.pdf

xdg-open $f_pdf

rm $f_pdf

