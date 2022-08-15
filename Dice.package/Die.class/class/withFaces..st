as yet unclassified
withFaces: aNumber
	"Create and initialize a new dice with aNumber faces"
	
	| instance |
	instance := self new.
	instance faces: aNumber.
	^ instance.