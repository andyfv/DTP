as yet unclassified
testWalletAtCreationIsZero
	| w |
	w := Wallet new.
	self assert: w money = 0  