as yet unclassified
withAddress: anAddress initialSupply: paperSheets
	^ (self withAddress: anAddress)
		resupply: paperSheets;
		yourself.
