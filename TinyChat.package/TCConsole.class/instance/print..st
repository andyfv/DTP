accessing
print: aCollectionOfMessages
	list items: 
		(aCollectionOfMessages collect: [ :m | m printString])
		