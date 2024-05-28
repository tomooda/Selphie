Extension { #name : 'StDirectoryTreePresenter' }

{ #category : '*Selphie-Core' }
StDirectoryTreePresenter >> expandPath: aFileLocator [
	"Expand the receiver's tree to aFileLocator reference"

	| path aPathForSpec currentNode |
	path := aFileLocator asPath segments asOrderedCollection.
	aPathForSpec := OrderedCollection new.
	aPathForSpec add: 1.

	currentNode := directoryTreePresenter roots anyOne.

	path do: [ :aPart |
		| subdirs |
		subdirs := currentNode directories sorted: [ :a :b |
			           a basename caseInsensitiveLessOrEqual: b basename ].
		currentNode := nil.
		subdirs doWithIndex: [ :subdir :index |
			(currentNode isNil and: [ subdir basename = aPart ]) ifTrue: [
				currentNode := subdir.
				aPathForSpec add: index ] ].
		currentNode ifNil: [ ^ self ] ].

	directoryTreePresenter
		selectPath: aPathForSpec
		scrollToSelection: false
]
