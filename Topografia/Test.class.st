Class {
	#name : #Test,
	#superclass : #TestCase,
	#instVars : [
		'proporcionAgua',
		'proporcionTierra',
		'desperdicio',
		'topAgua',
		'topTierra',
		'topCompuesta',
		'topCompuesta2',
		'topAgua2',
		'topCompuesta3',
		'topFeed'
	],
	#category : #Topografia
}

{ #category : #running }
Test >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
topAgua := Agua new.
topAgua2 := Agua new.
topTierra  := Tierra new.
topFeed := Feedlot new.

topCompuesta := CompositeTopografia new: topAgua top2: topAgua top3:topAgua2  top4: topTierra.
topCompuesta2 := CompositeTopografia new: topFeed  top2: topAgua top3:topAgua2  top4: topCompuesta .
topCompuesta3 := CompositeTopografia new: topFeed  top2: topAgua top3:topAgua2  top4: topCompuesta .
]
