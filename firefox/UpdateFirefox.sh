#/bin/bash
cd $(dirname "$0")/..
logTime='`date --set=%Y-%m-%d_%H.%M.%S_%z'
git mv `ls firefox/*.xpi` firefox/BBSpelcek.zip
git mv `ls ooo/*.oxt` ooo/BBSpelcek.zip
zip -u firefox/BBSpelcek.zip * dictionaries/*
zip -u ooo/BBSpelcek.zip * dictionaries/*
git mv firefox/BBSpelcek.zip firefox/BBSpelcek-$logTime.xpi
git mv ooo/BBSpelcek.zip ooo/babyish.oxt
git add `ls firefox/*.xpi` ooo/babyish.oxt
git commit -m "Ripo ùpdeiten gut $logTime"
git push

