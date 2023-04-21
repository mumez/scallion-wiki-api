accessing
ownedBy
  ownedBy ifNil: [ ^ self book ownedBy ].
  ^ ownedBy