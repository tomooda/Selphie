Extension { #name : 'HaloMorph' }

{ #category : '*Selphie-Core' }
HaloMorph >> addSelphieHandle: handleSpec [

		self
			addHandle: handleSpec
			on: #mouseDown
			send: #doSelphie:with:
			to: self
]

{ #category : '*Selphie-Core' }
HaloMorph >> doSelphie: evt with: menuHandle [
	"Take a screenshot of the target morph"

	self delete.
	^ innerTarget selphie
]

{ #category : '*Selphie-Core' }
HaloMorph class >> initializeWithSelphie [

	<script: 'HaloMorph initializeWithSelphie'>
	self installHaloTheme: #selphieHaloSpecifications
]

{ #category : '*Selphie-Core' }
HaloMorph class >> selphieHaloSpecifications [
	"Answer an array that characterizes the locations, colors, icons, and selectors of the halo handles that may be used in the iconic halo scheme"

	"self installHaloTheme: #selphieHaloSpecifications"

	^ #(
	"  	selector				horiz		vert			color info						icon key
		---------				------		-----------		-------------------------------		---------------"
	(addCollapseHandle:		left			topCenter		(tan)							#haloCollapse)
	(addDebugHandle:		right		topCenter		(blue	veryMuchLighter)		#haloDebug)
	(addSelphieHandle:		right		center		(green 	veryMuchLighter)		#smallScreenshot)
	(addDismissHandle:		left			top				(red		muchLighter)			#haloDismiss)
	(addRotateHandle:		left			bottom			(blue paler paler paler paler)							#haloRot)
	(addMenuHandle:		leftCenter	top				(red)							#haloMenu)
	(addGrabHandle:			center		top				(gray)							#haloGrab)
	(addDragHandle:			rightCenter	top				(brown)							#haloDrag)
	(addDupHandle:			right		top				(green)							#haloDup)
	(addHelpHandle:			center		bottom			(lightBlue)						#haloHelp)
	(addGrowHandle:		right		bottom			(yellow)						#haloScale)
	(addScaleHandle:		right		bottom			(lightOrange)					#haloScale)
	(addFontSizeHandle:		leftCenter	bottom			(lightGreen)						#haloFontSize)
	(addFontStyleHandle:		center		bottom			(lightRed)						#haloFontStyle)
	(addFontEmphHandle:	rightCenter	bottom			(lightBrown darker)				#haloFontEmph)
	(addRecolorHandle:		right		bottomCenter	(magenta darker)				#haloRecolor) )
]
