as yet unclassified
evaluateWith: anObject
	^ (left evaluateWith: anObject) + (right evaluateWith: anObject)