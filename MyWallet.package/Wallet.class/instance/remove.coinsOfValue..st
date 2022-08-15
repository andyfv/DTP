removing
remove: anInteger coinsOfValue: aNumber
	"Remove from the receiver coins of value aNumber"
	| availableCoins |
	availableCoins := 0.
	availableCoins := self coinsOfValue: aNumber.
	availableCoins >= anInteger 
		ifTrue: 	[anInteger timesRepeat: 
							[bagCoins remove: aNumber 
									ifAbsent: []
							]
					]
		ifFalse: [Error signal: 'No such coins']