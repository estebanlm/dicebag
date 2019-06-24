Class {
	#name : #DiceTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DiceTest >> testRoll [

	100 timesRepeat: [ 
		self assert: (Dice d6 roll between: 1  and: 6) ].
	100 timesRepeat: [ 
		self assert: (Dice d20 roll between: 1  and: 20) ].
	100 timesRepeat: [ 
		self assert: (Dice d100 roll between: 1  and: 100) ]	
]
