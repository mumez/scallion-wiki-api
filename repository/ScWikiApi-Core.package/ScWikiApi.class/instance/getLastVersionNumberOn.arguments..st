api-version
getLastVersionNumberOn: aRequest arguments: args
  | pageName wikiBookName wikiBook page fields |
  args ifNil: [ ^ ZnResponse badRequest: aRequest ].
  pageName := args at: 'page' ifAbsent: [ ^ ZnResponse badRequest: aRequest ].
  wikiBookName := args
    at: 'wiki'
    ifAbsent: [ ^ ZnResponse badRequest: aRequest ].
  wikiBook := (self repository bookNamed: wikiBookName)
    ifNil: [ ^ ZnResponse notFound: aRequest url ].
  page := wikiBook pageNamed: pageName.
  page ifNil: [ ^ ZnResponse notFound: aRequest url ].
  fields := args at: 'field' ifAbsent: [ ^ ZnResponse badRequest: aRequest ].
  fields = 'lastVersionNumber'
    ifFalse: [ ^ ZnResponse badRequest: aRequest ].
  ^ self returnJson: page lastVersionNumber