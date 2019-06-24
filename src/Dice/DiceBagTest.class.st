Class {
	#name : #DiceBagTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DiceBagTest >> testRoll [
	| bag result |

	bag := 6 d6.
	result := bag roll.
	
	self assert: result rolls size equals: 6.
	self assert: result sum equals: result rolls sum.
	self assert: result average equals: ((result rolls sum) / 6) asInteger.
	self assert: result max equals: result rolls max
]
