#/bin/bash
git mv `ls *.xpi` BBSpelcek.zip
git commit -m "Fayls editen gut `date` à offis"
git mv BBSpelcek.zip BBSelcek-`date`.xpi
git add `ls *.xpi`
git commit -m "Ripo ùpdeiten gut `date`"
git push
