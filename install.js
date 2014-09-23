var err = initInstall("Babyish spellchecker", "bb@mimosapudica.org", "0.2.43.20140509");
if (err != SUCCESS)
    cancelInstall();

var fProgram = getFolder("Program");
err = addDirectory("", "bb@mimosapudica.org",
		   "dictionaries", fProgram, "dictionaries", true);
if (err != SUCCESS)
    cancelInstall();

performInstall();
