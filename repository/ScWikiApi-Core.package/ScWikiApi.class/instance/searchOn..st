api-search
searchOn: aRequest
  | wikiBooks |
  wikiBooks := self repository books values collect: [ :e | e asDictionary ].
  ^ self returnJson: wikiBooks asArray