Class {
	#name : 'BaselineOfSelphie',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfSelphie',
	#package : 'BaselineOfSelphie'
}

{ #category : 'baselines' }
BaselineOfSelphie >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec package: 'Selphie-Core'.
		spec group: 'default' with: #( 'Selphie-Core' ).
		spec postLoadDoIt: #postLoad ]
]

{ #category : 'activation' }
BaselineOfSelphie >> postLoad [

	HaloMorph initializeWithSelphie
]
