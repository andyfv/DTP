tests
testPrinting 
	| el1 dOldComics |
	el1 := MFFile new name: 'astroboy'; contents: 'The story of a boy turned into a robot that solved the world'.
	dOldComics := MFDirectory new name: 'oldcomics'.
	dOldComics addElement: el1. 
	self assert: el1 printString equals:
'oldcomics/astroboy'