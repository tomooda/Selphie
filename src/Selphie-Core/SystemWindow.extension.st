Extension { #name : 'SystemWindow' }

{ #category : '*Selphie-Core' }
SystemWindow class >> selphieMenuOn: aBuilder [

	<windowMenu>
	(aBuilder item: #Selphie)
		order: 120.0;
		action: [ aBuilder model selphie ];
		iconName: #smallScreenshot
]
