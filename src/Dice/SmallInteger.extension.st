Extension { #name : #SmallInteger }

{ #category : #'*Dice' }
SmallInteger >> d10 [

	^ DiceBag new: self withAll: Dice d10
]

{ #category : #'*Dice' }
SmallInteger >> d100 [

	^ DiceBag new: self withAll: Dice d100
]

{ #category : #'*Dice' }
SmallInteger >> d12 [

	^ DiceBag new: self withAll: Dice d12
]

{ #category : #'*Dice' }
SmallInteger >> d20 [

	^ DiceBag new: self withAll: Dice d20
]

{ #category : #'*Dice' }
SmallInteger >> d4 [

	^ DiceBag new: self withAll: Dice d4
]

{ #category : #'*Dice' }
SmallInteger >> d6 [

	^ DiceBag new: self withAll: Dice d6
]

{ #category : #'*Dice' }
SmallInteger >> d8 [

	^ DiceBag new: self withAll: Dice d8
]
