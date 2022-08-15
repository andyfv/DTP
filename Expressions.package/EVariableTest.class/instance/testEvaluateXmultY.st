as yet unclassified
testEvaluateXmultY
	| ep1 ep2 add |
	ep1 := EVariable new id: #x.
	ep2 := EVariable new id: #y.
	add := EMultiplication left: ep1 right: ep2.
	self 	assert: (add evaluateWith: {#x -> 10 . #y -> 2} asDictionary) 
			equals: 20.
	self 	assert: (add evaluateWith: {#x -> 10 . #y -> 12} asDictionary) 
			equals: 120.