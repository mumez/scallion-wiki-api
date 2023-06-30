populating
putBook: aWikiBook
  | tasks strm |
  tasks := Array new.
  strm := aWikiBook pages values asArray readStream.
  [ strm atEnd ]
    whileFalse: [ 
      | pages task |
      pages := strm next: 10.
      task := self putPages: pages on: aWikiBook.
      tasks add: task ].
  ^ tasks