converting
asDictionary
  ^ {('id' -> self id).
  ('name' -> self name).
  ('title' -> self title).
  ('ownedBy' -> self ownedBy).
  ('count' -> self lastPageNumber value)} asDictionary