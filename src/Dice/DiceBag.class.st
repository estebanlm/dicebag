Class {
	#name : #DiceBag,
	#superclass : #Object,
	#instVars : [
		'dices'
	],
	#category : #Dice
}

{ #category : #'as yet unclassified' }
DiceBag class >> new: aNumber withAll: aDice [ 
	
	^ self new 
		addAll: ((1 to: aNumber) collect: [ :each | aDice clone ]);
		yourself
]

{ #category : #arithmetic }
DiceBag >> + aDiceOrBag [

	^ DiceBag new 
		addAll: self dices;
		addAll: aDiceOrBag asDiceBag dices;
		yourself
]

{ #category : #adding }
DiceBag >> add: aDice [
	
	dices add: aDice
]

{ #category : #adding }
DiceBag >> addAll: aCollection [ 
	
	aCollection do: [ :each | self add: each ]
]

{ #category : #converting }
DiceBag >> asDiceBag [

	^ self
]

{ #category : #accessing }
DiceBag >> dices [
	^ dices
]

{ #category : #initialization }
DiceBag >> initialize [ 

	super initialize.
	dices := OrderedCollection new
]

{ #category : #rolling }
DiceBag >> roll [
	
	^ DiceBagResult rolls: (dices 
		collect: #roll
		as: Array)
]
