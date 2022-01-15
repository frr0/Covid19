#!/bin/sh

echo "Do you want Covid data or Vaccine data? [1][2]"
read answer

echo "Enter the name of the file: "
read name

f_csv=$name.csv
f_pdf=$name.pdf
link1=https://github.com/pcm-dpc/COVID-19/blob/master/$f_csv
link2=https://raw.githubusercontent.com/italia/covid19-opendata-vaccini/master/dati/$f_csv

echo $link2
echo $f_csv
echo $f_pdf

if [ -f f_csv ]; then
  rm f_csv
fi

if [ -f f_pdf ]; then
  rm f_pdf
fi

if [[ $answer -eq "1" ]]; then
  echo $link1
  wget -q $link1
else if [[ $answer -eq "2" ]]; then
  echo $link2
  wget -q $link2
else 
  echo "Something has gone wrong!"
fi
  #wget -q $link2

pandoc -V geometry:"paperwidth=500mm, paperheight=200mm, top=1.5cm, bottom=1.5cm, left=1.5cm, right=1.5cm" -o $f_pdf $f_csv +RTS -Ksize -RTS

xdg-open $f_pdf

rm $f_pdf
rm $f_csv
