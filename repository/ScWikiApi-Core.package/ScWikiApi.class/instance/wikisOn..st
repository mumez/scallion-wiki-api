api-wiki
wikisOn: aRequest
  | wikiBooks |
  wikiBooks := self repository books values collect: [ :e | e asDictionary ].
  ^ self returnJson: wikiBooks asArray