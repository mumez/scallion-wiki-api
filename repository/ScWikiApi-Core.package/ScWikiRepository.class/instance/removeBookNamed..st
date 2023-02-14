actions
removeBookNamed: aWikiBookName
  self books removeKey: aWikiBookName ifAbsent: [ ^ false ].
  ^ true