as yet unclassified
coinsFor: aValue into: accuWallet
	[ accuWallet money < aValue ]
		whileTrue: [ accuWallet addCoin: self biggestAndRemove ].
	^ accuWallet
