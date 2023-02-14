api-page
existPagesOn: aRequest arguments: args
  | pageNames wikiBookName wikiBook results |
  args ifNil: [ ^ ZnResponse badRequest: aRequest ].
  pageNames := (args at: 'names' ifAbsent: [ '' ]) findTokens: ','.
  wikiBookName := args
    at: 'wiki'
    ifAbsent: [ ^ ZnResponse badRequest: aRequest ].
  wikiBook := (self repository bookNamed: wikiBookName)
    ifNil: [ ^ ZnResponse notFound: aRequest url ].
  results := pageNames
    collect: [ :pageName | wikiBook existsPageNamed: pageName ].
  ^ self returnJson: results asArray