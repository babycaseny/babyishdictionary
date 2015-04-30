#/bin/bash
cd $(dirname "$0")/..
#logFileName='firefox/ProcessRunTime-`date -I`.txt'
git mv `ls firefox/*.xpi` firefox/BBSpelcek.zip
git mv `ls ooo/*.oxt` ooo/BBSpelcek.zip
zip -u firefox/BBSpelcek.zip * dictionaries/*
zip -u ooo/BBSpelcek.zip * dictionaries/*
git mv firefox/BBSpelcek.zip firefox/BBSpelcek-`date -I`.xpi
git mv ooo/BBSpelcek.zip ooo/babyish.oxt
git add `ls firefox/*.xpi` ooo/babyish.oxt
git commit -m "Ripo ùpdeiten gut `date -I`"
git push

