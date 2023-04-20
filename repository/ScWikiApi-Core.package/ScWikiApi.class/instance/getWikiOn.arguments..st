api-wiki
getWikiOn: aRequest arguments: args
  | wikiBookName wikiBook page |
  wikiBookName := args
    at: 'name'
    ifAbsent: [ ^ ZnResponse badRequest: aRequest ].
  wikiBook := (self repository bookNamed: wikiBookName)
    ifNil: [ ^ ZnResponse notFound: aRequest url ].
  ^ self returnJson: wikiBook asDictionary