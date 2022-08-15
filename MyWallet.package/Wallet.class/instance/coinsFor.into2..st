as yet unclassified
coinsFor: anAmount into2: accuWallet
	[anAmount = 0] ifTrue: [accuWallet addCoin: bagCoins].
	[(anAmount < 0) | (bagCoins sortedElements size = 0)] 
		ifTrue: [^ accuWallet]
		ifFalse: [accuWallet addCoin:
					((self coinsFor: anAmount into2: accuWallet) money)
					+
					((self coinsFor: (anAmount - (self biggest2)) into2: accuWallet) money)
					]