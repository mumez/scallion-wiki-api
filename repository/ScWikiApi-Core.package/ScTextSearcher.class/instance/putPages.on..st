populating
putPages: pages on: aWikiBook
  | docs |
  docs := pages collect: [ :each | each asDictionary ].
  ^ self index putDocuments: docs