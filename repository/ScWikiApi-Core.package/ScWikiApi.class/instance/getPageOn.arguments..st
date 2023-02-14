api-page
getPageOn: aRequest arguments: args
  | pageName wikiBookName wikiBook page |
  args ifNil: [ ^ ZnResponse badRequest: aRequest ].
  pageName := args at: 'name' ifAbsent: [ ^ ZnResponse badRequest: aRequest ].
  wikiBookName := args
    at: 'wiki'
    ifAbsent: [ ^ ZnResponse badRequest: aRequest ].
  wikiBook := (self repository bookNamed: wikiBookName)
    ifNil: [ ^ ZnResponse notFound: aRequest url ].
  page := wikiBook pageNamed: pageName.
  page ifNil: [ ^ ZnResponse notFound: aRequest url ].
  ^ self returnJson: page asDictionary