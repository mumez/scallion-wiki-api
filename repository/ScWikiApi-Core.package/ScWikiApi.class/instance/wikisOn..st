api-wiki
wikisOn: aRequest
  | wikiBooks |
  wikiBooks := self repository books collect: [ :e | e asDictionary ].
  ^ self returnJson: wikiBooks