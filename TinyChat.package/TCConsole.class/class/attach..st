as yet unclassified
attach: aTinyChat
	| window |
	window := self new chat: aTinyChat.
	window openWithSpec whenClosedDo: [ aTinyChat disconnect ].
	^ window
