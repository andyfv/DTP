typing/selecting keys
search: aString
	^ files select: [ :eachFile | eachFile search: aString ]