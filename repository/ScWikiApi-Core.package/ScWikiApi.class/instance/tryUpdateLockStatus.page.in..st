private
tryUpdateLockStatus: newLockStatus page: page in: wikiBook
  | uid |
  uid := page context at: 'user_id' ifAbsent: [ ^ self ].
  wikiBook ownedBy = uid
    ifTrue: [ page isLocked: newLockStatus ]