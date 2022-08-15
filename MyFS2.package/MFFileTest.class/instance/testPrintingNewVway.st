tests
testPrintingNewVway
	| el1 dOldComics droots |
	el1 := MFFile new name: 'astroboy'; contents: 'The story of a boy turned into a robot that solved the world'.
	dOldComics := MFDirectory new name: 'oldcomics'.
	dOldComics addElement: el1. 
	droots := MFDirectory new name: 'root'.
	dOldComics parent: droots. 
	self assert: el1 printString equals:
'root/oldcomics/astroboy'