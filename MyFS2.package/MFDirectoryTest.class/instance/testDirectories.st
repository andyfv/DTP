tests
testDirectories

	| dComics dOldComics dManga |
	dComics := MFDirectory new name: 'comics'.
	dOldComics := MFDirectory new name: 'oldcomics'.
	dComics addElement: dOldComics. 
	self assert: dComics parent equals: nil.
	self assert: dOldComics parent equals: dComics.
	self assert: (dComics children includes: dOldComics).
	dManga := MFDirectory new name: 'manga'.
	dComics addElement: dManga. 
	dComics children.
	self assert: (dComics children includes: dManga).
	