initialize
isOver
	^ players anySatisfy: [:aPlayer | aPlayer position = tiles size]