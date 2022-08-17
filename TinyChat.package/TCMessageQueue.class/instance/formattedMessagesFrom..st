initialization
formattedMessagesFrom: aMessageNumber
	^ String streamContents: [ :formatMessagesStream |
			(self listFrom: aMessageNumber)
				do: [ 	:m | formatMessagesStream << m printString ] ]