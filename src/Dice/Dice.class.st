Class {
	#name : #Dice,
	#superclass : #Object,
	#instVars : [
		'sides'
	],
	#classVars : [
		'D10',
		'D100',
		'D12',
		'D20',
		'D4',
		'D6',
		'D8'
	],
	#category : #Dice
}

{ #category : #accessing }
Dice class >> d10 [

	^ D10
]

{ #category : #accessing }
Dice class >> d100 [ 

	^ D100
]

{ #category : #accessing }
Dice class >> d12 [

	^ D12
]

{ #category : #accessing }
Dice class >> d20 [ 

	^ D20
]

{ #category : #accessing }
Dice class >> d4 [

	^ D4
]

{ #category : #accessing }
Dice class >> d6 [ 

	^ D6
]

{ #category : #accessing }
Dice class >> d8 [

	^ D8
]

{ #category : #'class initialization' }
Dice class >> initialize [ 

	D4 := self newSides: 4.
	D6 := self newSides: 6.
	D8 := self newSides: 8.
	D10 := self newSides: 10.
	D12 := self newSides: 12.
	D20 := self newSides: 20.
	D100 := self newSides: 100
]

{ #category : #'instance creation' }
Dice class >> newSides: sides [

	^ self basicNew 
		initializeSides: sides;
		yourself
]

{ #category : #converting }
Dice >> asDiceBag [

	^ DiceBag new: 1 withAll: self
]

{ #category : #initialization }
Dice >> initializeSides: aNumber [ 

	self initialize.
	sides := aNumber
]

{ #category : #rolling }
Dice >> roll [

	^ sides atRandom
]
