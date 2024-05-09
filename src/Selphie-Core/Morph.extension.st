Extension { #name : 'Morph' }

{ #category : '*Selphie-Core' }
Morph >> balloonHelpTextForHandle: aHandle [
	"Answer a string providing balloon help for the
	given halo handle"
	(aHandle eventHandler mouseSelectorsInclude: #doSelphie:with:) ifTrue: [ ^ 'Selphie' ].
	(aHandle eventHandler mouseSelectorsInclude: #doRecolor:with:) ifTrue: [^ 'Change color'].
	(aHandle eventHandler mouseSelectorsInclude: #mouseDownInDimissHandle:with:) ifTrue: [^ 'Remove from screen' translated].
	#(#(#addFullHandles 'More halo handles')  #(#chooseEmphasisOrAlignment 'Emphasis & alignment') #(#chooseFont 'Change font') #(#chooseNewGraphicFromHalo 'Choose a new graphic') #(#chooseStyle 'Change style') #(#doDebug:with: 'Debug') #(#doDirection:with: 'Choose forward direction') #(#doDup:with: 'Duplicate')  #(#doMenu:with: 'Menu') #(#doGrab:with: 'Pick up')  #(#mouseDownInCollapseHandle:with: 'Collapse') #(#mouseDownOnHelpHandle: 'Help')  #(#prepareToTrackCenterOfRotation:with: 'Move object or set center of rotation') #(#startDrag:with: 'Move') #(#startGrow:with: 'Change size') #(#startRot:with: 'Rotate') #(#startScale:with: 'Change scale')#(#trackCenterOfRotation:with: 'Set center of rotation') )
		do: [:pair | (aHandle eventHandler mouseSelectorsInclude: pair first)
				ifTrue: [^ pair last]].
	^ 'unknown halo handle' translated
]

{ #category : '*Selphie-Core' }
Morph >> selphie [

	| image |
	image := self asForm.
	(StSaveFilePresenter extensions: #( 'png' )) okAction: [ :ref |
		image writePNGFileNamed: ref ]
]
