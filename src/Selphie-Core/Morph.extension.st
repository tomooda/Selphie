Extension { #name : 'Morph' }

{ #category : '*Selphie-Core' }
Morph >> selphie [

	| image |
	image := self asForm.
	(StSaveFilePresenter extensions: #( 'png' )) okAction: [ :ref |
		image writePNGFileNamed: ref ]
]
