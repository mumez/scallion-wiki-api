actions
renameBookFrom: oldBookName to: newBookName
  | existingBook |
  existingBook := self bookNamed: oldBookName.
  existingBook ifNil: [ ^ #'noSuchBook' -> false ].
  (self bookNamed: newBookName) ifNotNil: [ ^ #'newNameBookExists' -> false ].
  self removeBookNamed: oldBookName.
  existingBook name: newBookName.
  self putBook: existingBook.
  ^ #'renamed' -> true