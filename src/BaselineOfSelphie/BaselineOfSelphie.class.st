Class {
	#name : 'BaselineOfSelphie',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfSelphie',
	#package : 'BaselineOfSelphie'
}

{ #category : 'baselines' }
BaselineOfSelphie >> baseline: spec [

	<baseline>
	spec package: 'Selphie-Core'.
	spec group: 'default' with: #( 'Selphie-Core' )
]
