accessing
initializeWidgets
	list := ListModel new.
	input := TextInputFieldModel new
		ghostText: 'Type your message here...';
		enabled: true;
		acceptBlock: [ :string |
			chat send: string.
			input text: '' ].
	self focusOrder add: input.
