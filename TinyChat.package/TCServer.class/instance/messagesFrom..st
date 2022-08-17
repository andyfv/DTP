initialization
messagesFrom: request
	^ messagesQueue formattedMessagesFrom: (request at: #id)
