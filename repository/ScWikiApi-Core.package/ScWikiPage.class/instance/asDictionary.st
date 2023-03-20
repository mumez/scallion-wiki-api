converting
asDictionary
  ^ {('id' -> self id).
  ('name' -> self name).
  ('number' -> self number).
  ('updatedAt' -> self updatedAtMilliseconds).
  ('updatedBy' -> self updatedBy).
  ('content' -> self content).
  ('isLocked' -> self isLocked).
  ('bookId' -> self book id).
  ('wiki' -> self book name)} asDictionary