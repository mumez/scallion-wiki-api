actions
updatedPagesBefore: dateAndTime size: size do: aBlock
  | updatedPagesStream |
  updatedPagesStream := self updatedPagesStreamBefore: dateAndTime.
  size
    timesRepeat: [ 
      updatedPagesStream atEnd
        ifTrue: [ ^ self ]
        ifFalse: [ aBlock value: updatedPagesStream next ] ]