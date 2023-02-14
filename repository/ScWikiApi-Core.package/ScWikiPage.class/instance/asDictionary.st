converting
asDictionary
  ^ {('id' -> self id).
  ('name' -> self name).
  ('number' -> self number).
  ('updatedAt' -> self updatedAt asSeconds).
  ('updatedBy' -> self updatedBy).
  ('content' -> self content).
  ('isLocked' -> self isLocked).
  ('bookId' -> self book id)} asDictionary