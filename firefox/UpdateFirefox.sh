#/bin/bash
time -o ProcessRunTime-`date -I`.txt
git mv `ls *.xpi` BBSpelcek.zip
git commit -m "Fayls editen gut `date -I` à offis"
git mv BBSpelcek.zip BBSpelcek-`date -I`.xpi
git add `ls *.xpi`
git commit -m "Ripo ùpdeiten gut `date -I`"
git push
time
