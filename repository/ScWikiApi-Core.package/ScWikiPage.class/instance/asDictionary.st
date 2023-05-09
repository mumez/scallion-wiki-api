converting
asDictionary
  | dict |
  dict := {('id' -> self id).
  ('name' -> self name).
  ('number' -> self number).
  ('updatedAt' -> self updatedAtMilliseconds).
  ('updatedBy' -> self updatedBy).
  ('content' -> self content).
  ('isLocked' -> self isLocked).
  ('ownedBy' -> self ownedBy).
  ('bookId' -> self book id).
  ('wiki' -> self book name)} asDictionary.
  self title ifNotNil: [ :val | dict at: 'title' put: val ].
  ^ dict