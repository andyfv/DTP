tests
testSearch 
	| p el1 el2 |
	p := MFDirectory new name: 'comics'.
	el1 := MFFile new name: 'babar'; contents: 'Babar et Celeste'.
	p addElement: el1.
	el2 := MFFile new name: 'astroboy'; contents: 'super cool robot'.
	p addElement: el2.
	self assert: ((p search: 'Ba') includes: el1)