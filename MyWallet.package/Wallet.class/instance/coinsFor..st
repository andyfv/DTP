as yet unclassified
coinsFor: aValue
	"Returns a wallet with the largest coins to pay a certain amount
	and an empty wallet if this is not possible"
	| res |
	res := self class new.				"create a new Wallet" 
	^ (self canPay: aValue)
		ifFalse: [ res ]					"return empty Wallet"
		ifTrue: 	[ self coinsFor: aValue into: res ]
