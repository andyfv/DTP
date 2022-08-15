accessing
tileNumber: aNumber 
	tiles := Array new: aNumber. 
	1 to: aNumber do: [:pos | 
		tiles at: pos put: (SLTile new position: pos)] 
	