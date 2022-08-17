accessing
start
	console := TCConsole attach: self.
	self sendNewMessage: 
		(TCMessage from: login text: 'I joined thechat room').
	lastMessageIndex := self readLastMessageID.		
	self refreshMessages.
